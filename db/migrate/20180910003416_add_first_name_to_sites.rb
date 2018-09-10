class AddFirstNameToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :firstName, :string
  end
end
