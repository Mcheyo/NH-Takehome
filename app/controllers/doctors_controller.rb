class DoctorsController < ApplicationController

    def index 
        doctor = Doctor.all
        render json: doctor.to_json
    end

     
    def show
            doctor = Doctor.find_by(id:params[:id])
            render json: doctor
    end

    def my_appointments
        
        doctor = Doctor.find_by(first_name:params[:name])

        if doctor.valid?
        render json: doctor.appointments

        else 
            render json: {
                message:   doctor.errors.full_messages
              }
    end

    
end
