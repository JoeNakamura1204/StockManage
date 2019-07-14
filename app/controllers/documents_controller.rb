class DocumentsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_post, only: %i(show destroy)

  ETHEREUM_TOKEN_PATH = "#{Dir.pwd}/contract/StockManage.sol"
  ROPSTEN_URL = 'HTTP://127.0.0.1:7545'
  @client = Ethereum::HttpClient.new(ROPSTEN_URL)
  @client.default_account = "0x051337fA7424e6fB9215f5a60eB2ADB45bEB8Cfb"
  @contract = Ethereum::Contract.create(file: ETHEREUM_TOKEN_PATH, client: @client)
  @contract.deploy_and_wait

  # @contract = Ethereum::Contract.create(name: "ManageDocument", address: "0xecc2307b547b8ccabb800f4de0290b7ac0f85ee4",client: @client
  # binding.pry

  def index
    @documents = Document.all
    gon.metadata = "gon"
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.file.present?
      @document.save
      print(params)
      redirect_to root_path
      flash[:notice] = "投稿が保存されました"
    else
      redirect_to root_path
      flash[:alert] = "投稿に失敗しました"
    end

    gon.metadata =  Document.make_metadata(@document)
  end

  def show

  end

  def destroy
    if @document.user == current_user
      flash[:notice] = "投稿が削除されました" if @document.destroy
    else
      flash[:alert] = "投稿の削除に失敗しました"
    end
    redirect_to root_path
  end



  private
  def document_params
    params.require(:document).permit(:file).merge(user_id: current_user.id)
  end

  def set_post
    @document = Document.find_by(id: params[:id])
  end

end



