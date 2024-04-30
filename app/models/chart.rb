class Chart < ApplicationRecord
    validates :patient_count, presence: true
    validates :registration_date, presence: true
end