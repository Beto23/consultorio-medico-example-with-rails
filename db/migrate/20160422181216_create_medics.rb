class CreateMedics < ActiveRecord::Migration
  def change
    create_table :medics do |t|
      t.belongs_to :doctor, index: true
      t.references :specialty, index: true, foreign_key: true
      t.string :phone
      t.string :cell_phone
      t.string :address

      t.timestamps null: false
    end
  end
end
