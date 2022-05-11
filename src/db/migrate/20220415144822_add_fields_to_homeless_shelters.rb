class AddFieldsToHomelessShelters < ActiveRecord::Migration[6.0]
  def change
    add_column :homeless_shelters, :county, :string
  end
end
