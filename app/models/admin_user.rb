class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reviews

  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable, :confirmable, :registerable
  ADMIN='admin'
  USER='user'
  BANNED='banned'
  ROLES ={ADMIN=>'admin',USER =>'user', BANNED=>'banned' }

  def ability
    @ability ||= Ability.new(self)
  end
end
