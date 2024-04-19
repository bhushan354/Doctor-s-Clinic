class PatientsController < ApplicationController
    def index
        @patients = current_user.patients
    end

    def new
        @patient = current_user.patients.build
    end

    def create
        @patient = current_user.patients.build(req_patient_params)
        if @patient.save
            redirect_to patients_path, notice: "Patient registered successfully."
        else  
            redirect_to patients_path, notice: "Error regestering patient, Try Again"
        end
    end

    def edit
        @patient = current_user.patients.find(params[:id])
    end

    def update
        @patient = current_user.patients.find(params[:id])
        if @patient.update(req_patient_params)
          redirect_to patients_path, notice: 'Patient details updated successfully.'
        else
          redirect_to patients_path, notice: 'Error updating patient details.'
        end
    end

    def destroy
        @patient = current_user.patients.find(params[:id])
        @patient.destroy
        redirect_to patients_path, notice: 'Patient data removed successfully.'
    end

    private

    def req_patient_params
        params.require(:patient).permit(:name, :phone_number, :birth_date, :gender, :address)
    end
    
end