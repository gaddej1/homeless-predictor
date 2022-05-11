class CreateHomelessShelters < ActiveRecord::Migration[6.0]
  def change
    create_table :homeless_shelters do |t|
      t.string :name
      t.string :contact
      t.string :address

      t.timestamps
    end
  end
end
