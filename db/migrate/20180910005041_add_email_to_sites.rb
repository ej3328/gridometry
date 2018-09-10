class AddEmailToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :email, :string
  end
end
