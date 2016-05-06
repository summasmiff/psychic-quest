class CreateBeverages < ActiveRecord::Migration
  def change
    create_table :beverages do |t|
      t.string :name
      t.string :flavor
      t.string :secondary_flavor

      t.timestamps null: false
    end
  end
end
