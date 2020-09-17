class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.string :type
      t.string :location
      t.string :date
      t.integer :placement
      t.integer :driver_id
      t.integer :car_id

      t.timestamps
    end
  end
end
