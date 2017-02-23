class ChangeDataTypesInPokemon < ActiveRecord::Migration[5.0]
  def change
    change_column :pokemons, :height, :float
    change_column :pokemons, :weight, :float
  end
end
