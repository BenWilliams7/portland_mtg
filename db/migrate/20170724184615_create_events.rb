class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.datetime :datetime
      t.time :time
      t.string :format
      t.integer :price
      t.string :fires

    end
  end
end
