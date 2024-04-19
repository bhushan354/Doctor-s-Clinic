class Patient < ApplicationRecord
    belongs_to :user

    validates :name, presence: true
    validates :phone_number, presence: true
    validates :birth_date, presence: true
    validates :gender, presence: true
    validates :address, presence: true
end