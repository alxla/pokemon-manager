class RemovePokemonIdFromType < ActiveRecord::Migration[5.0]
  def change
    remove_column :types, :pokemon_id, :integer
  end
end
