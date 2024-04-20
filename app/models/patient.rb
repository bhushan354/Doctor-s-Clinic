class Patient < ApplicationRecord
    belongs_to :user

    validates :name, presence: true
    validates :phone_number, presence: true, length: { is: 10 }
    validates :birth_date, presence: true
    validates :gender, presence: true
    validates :address, presence: true
end