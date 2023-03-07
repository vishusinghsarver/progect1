class User < ApplicationRecord
  has_many :tasks,inverse_of: 'user'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #CATEGORY= ["Home","Office","Market"]
end
