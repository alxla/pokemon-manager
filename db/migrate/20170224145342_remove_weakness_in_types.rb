class RemoveWeaknessInTypes < ActiveRecord::Migration[5.0]
  def change
    remove_column :types, :weakness, :string
  end
end
