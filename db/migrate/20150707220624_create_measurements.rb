class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.float :neck
      t.float :chest
      t.float :length
      t.float :sleeve
      t.float :waist
      t.float :inseam
      t.float :foot_size

      t.timestamps null: false
    end
  end
end
