class CreatePsychics < ActiveRecord::Migration
  def change
    create_table :psychics do |t|
      t.string :name
      t.string :color

      t.timestamps null: false
    end
  end
end
