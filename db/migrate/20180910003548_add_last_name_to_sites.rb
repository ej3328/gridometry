class AddLastNameToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :lastName, :string
  end
end
