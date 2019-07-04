class AddCategoriesIdToCds < ActiveRecord::Migration[5.2]
  def change
    add_reference :cds, :category, foreign_key: true, index: true, after: :description
  end
end
