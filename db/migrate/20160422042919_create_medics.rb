class CreateMedics < ActiveRecord::Migration
  def change
    create_table :medics do |t|
        t.string :phone
        t.string :cell_phone
        t.string :address
      t.timestamps null: false
    end
  end
end
