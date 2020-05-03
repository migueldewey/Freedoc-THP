class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.belongs_to :doctor, index: true # Index Docteur
      t.belongs_to :patient, index: true # Index Patient

      t.timestamps
    end
  end
end
