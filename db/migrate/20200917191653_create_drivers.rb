class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.string :username
      t.string :password_digest
      t.integer :age
      t.string :skill_level

      t.timestamps
    end
  end
end
