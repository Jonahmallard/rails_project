class AddRaceTypeToRaces < ActiveRecord::Migration[6.0]
  def change
    add_column :Races, :race_type, :string
  end
end
