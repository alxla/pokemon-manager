class AddPicToType < ActiveRecord::Migration[5.0]
  def change
    add_column :types, :pic, :string
  end
end
