class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.string :date
      t.references :medic, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
