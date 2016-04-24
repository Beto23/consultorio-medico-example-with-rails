class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :state
      t.string :city
      t.string :address
      t.string :cp
      t.string :email
      t.string :phone
      t.string :cell_phone
      t.string :blood_type
      t.string :smoking
      t.string :alcoholism
      t.text :hereditary_background
      t.text :pathological
      t.text :non_pathological
      t.text :allergies
      t.text :surgeries

      t.timestamps null: false
    end
  end
end
