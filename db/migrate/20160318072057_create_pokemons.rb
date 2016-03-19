class CreatePokemons < ActiveRecord::Migration
  def change
  	drop_table :pokemons
    create_table :pokemons do |t|
      t.string :name
      t.integer :level
      t.integer :trainer_id
      t.integer :health

      t.timestamps null: false
    end
  end
end
