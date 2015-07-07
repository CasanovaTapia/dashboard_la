class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.decimal :cost
      t.string :description

      t.timestamps null: false
    end
  end
end
