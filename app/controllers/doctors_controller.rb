class DoctorsController < ApplicationController
    before_action :authenticate_user!
    include Chartkick::Helper
  
    def patients
      @patients = Patient.all
    end
  
    def chart
        @chart_data = Patient.group_by_day(:created_at).count
    end
end