class AddMessageToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :message, :text
  end
end
