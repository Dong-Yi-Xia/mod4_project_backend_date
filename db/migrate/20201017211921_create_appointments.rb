class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.string :location
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :outfit, null: false, foreign_key: true
      t.belongs_to :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
