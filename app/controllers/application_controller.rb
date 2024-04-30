class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
        case resource.role
        when 'doctor'
          doctors_patients_path
        when 'receptionist'
          patients_path
        else
          super
        end
      end
end
