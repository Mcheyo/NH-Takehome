class Appointment < ApplicationRecord
    belongs_to :doctor
    validate :valid_time
    validate :valid_space

    def valid_time
        
        time = Time.parse(self.date.to_s)
        if time.min%15 != 0 
            self.errors.add(:time, "must be in 15 minute intervals")
        end
    
    end

    def valid_space 
        doctor = self.doctor
        time = Time.parse(self.date.to_s)
        current_same_time_appts = doctor.appointments.find_all {|app| app.date == time}
        
        if current_same_time_appts != nil && current_same_time_appts.length >= 3 
            self.errors.add(:time, "too many appointments at this time please choose another time")
        end
    end
  

end
