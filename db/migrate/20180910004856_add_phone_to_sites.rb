class AddPhoneToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :phone, :integer
  end
end
