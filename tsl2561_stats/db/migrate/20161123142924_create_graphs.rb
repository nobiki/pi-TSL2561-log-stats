class CreateGraphs < ActiveRecord::Migration[5.0]
  def change
    create_table :graphs do |t|
      t.binary :graph64, :limit => (16*1024*1024 - 1)

      t.timestamps
    end
  end
end
