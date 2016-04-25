class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.references :consultation, index: true, foreign_key: true
      t.string :reason
      t.string :symptoms
      t.string :diagnosis
      t.string :medicament
      t.decimal :total

      t.timestamps null: false
    end
  end
end
