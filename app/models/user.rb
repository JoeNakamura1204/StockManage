class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :presence => true, length: {maximum: 50}

  has_many :documents, dependent: :destroy

  def find_user(id)
    return User.find_by(id:id)
  end

end
