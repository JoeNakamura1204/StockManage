class PagesController < ApplicationController
  def home
    print("OK")
    @user = User.find_by(id: params[:id])
    print(@user)
  end

end
