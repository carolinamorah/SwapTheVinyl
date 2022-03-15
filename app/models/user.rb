class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum rol: [:collectionist, :admin, :super_admin]

  has_many :vinyls, dependent: :destroy
  has_many :offers, class_name: "Offer", dependent: :destroy

end
