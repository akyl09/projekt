class CreateCategoryBundles < ActiveRecord::Migration
  def change
    create_table :category_bundles do |t|
      t.integer :cat_id
      t.integer :user_id

      t.timestamps
    end
  end
end
