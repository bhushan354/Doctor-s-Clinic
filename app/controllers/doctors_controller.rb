class DoctorsController < ApplicationController
    before_action :authenticate_user!

    def chart
      @patients_data = Patient.group_by_day(:created_at).count
      @labels = @patients_data.keys
      @data = @patients_data.values
    end
end