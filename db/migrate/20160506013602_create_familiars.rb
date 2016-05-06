class CreateFamiliars < ActiveRecord::Migration
  def change
    create_table :familiars do |t|
      t.string :name
      t.string :species
      t.text :personality

      t.timestamps null: false
    end
  end
end
