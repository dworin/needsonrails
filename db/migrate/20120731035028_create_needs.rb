class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :source
      t.integer :category_id
      t.string :needtext
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
