class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
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
      t.string :hereditary_background
      t.string :pathological
      t.string :non_pathological
      t.string :allergies
      t.string :surgeries

      t.timestamps null: false
    end
  end
end
