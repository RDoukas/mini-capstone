class RenameCategoryId < ActiveRecord::Migration[6.0]
  def change
    rename_column :product_categories, :catergory_id, :category_id
  end
end
