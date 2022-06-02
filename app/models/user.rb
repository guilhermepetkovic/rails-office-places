class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :places
  has_many :users

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :places
end
