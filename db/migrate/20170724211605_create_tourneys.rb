class CreateTourneys < ActiveRecord::Migration[5.1]
  def change
    create_table :tourneys do |t|
      t.string :name
      t.datetime :start_time
      t.string :format
      t.integer :price
      t.string :store
      t.string :fires

      t.timestamps
    end
  end
end
