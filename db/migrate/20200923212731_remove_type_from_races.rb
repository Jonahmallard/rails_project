class RemoveTypeFromRaces < ActiveRecord::Migration[6.0]
  def change
    remove_column :races, :type, :string
  end
end
