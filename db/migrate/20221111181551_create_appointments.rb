class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :patient_first_name
      t.string :patient_last_name
      t.string :kind
      t.string :doctor_id
      t.datetime :date
      t.timestamps
    end
  end
end
