class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :cat_name
      t.integer :cat_id

      t.timestamps
    end
  end
end
