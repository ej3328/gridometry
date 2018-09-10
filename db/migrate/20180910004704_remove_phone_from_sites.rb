class RemovePhoneFromSites < ActiveRecord::Migration[5.2]
  def change
    remove_column :sites, :phone, :string
  end
end
