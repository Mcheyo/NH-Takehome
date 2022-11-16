class AppointmentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    before_action :get_app, only: [:show, :edit, :update, :destroy]
    def index 
        appointments = Appointment.all
        render json: appointments.to_json
    end

    

    def create 
        
        doctor = Doctor.all.find { |doc| doc.first_name == params["doctor"]}
        appointment = Appointment.create(
          patient_first_name: params["patient_first_name"],
          patient_last_name:params["patient_last_name"],
          kind: params["kind"],
          date:params["date"],
          doctor:doctor
          ) 
        
        if appointment.valid? 
        render json: appointment
        
        else
         render json: {
           message:   appointment.errors.full_messages
         }
        end 
                
    end
    def show 
       render json: @appointment
    end
    def destroy
        @appointment.destroy
    end
    
    def find_by_date
       appointment =   Appointment.all.find { |app| app.date.to_date.to_s == params[:date]}
       render json: appointment
    end

    
   
def get_app
    @appointment = Appointment.find(params[:id])
end 

end
