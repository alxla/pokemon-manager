class AddRelationTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :pokemons, :types do |t|
      t.index :pokemon_id
      t.index :type_id
    end
  end
end
