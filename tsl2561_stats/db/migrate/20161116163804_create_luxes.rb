class CreateLuxes < ActiveRecord::Migration[5.0]
  def change
    create_table :luxes do |t|
      t.datetime :recorded_at
      t.integer :lux

      t.timestamps
    end
  end
end
