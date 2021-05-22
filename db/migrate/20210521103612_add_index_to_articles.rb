class AddIndexToArticles < ActiveRecord::Migration[6.1]
  def change
    add_index :articles,:title
    rename_index :articles,:title,:title_id
  end
end
