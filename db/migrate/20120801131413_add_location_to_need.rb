class AddLocationToNeed < ActiveRecord::Migration
  def change
    add_column :needs, :country, :text
    add_column :needs, :state, :text
    add_column :needs, :city, :text
  end
end
