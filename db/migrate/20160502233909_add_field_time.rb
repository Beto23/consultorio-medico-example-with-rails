class AddFieldTime < ActiveRecord::Migration
  def change
    remove_column :consultations, :date
    add_column :consultations, :date, :date
    add_column :consultations, :string, :time
  end
end
