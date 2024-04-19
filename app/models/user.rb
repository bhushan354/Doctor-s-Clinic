class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :patients
  
  # in rails-c 'User.roles'
  enum role: { receptionist: 'receptionist', doctor: 'doctor' }

  validates :role, presence: true
end
