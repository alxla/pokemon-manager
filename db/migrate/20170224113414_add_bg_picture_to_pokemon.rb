class AddBgPictureToPokemon < ActiveRecord::Migration[5.0]
  def change
    add_column :pokemons, :bgpic, :string
  end
end
