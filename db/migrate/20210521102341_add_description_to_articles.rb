class AddDescriptionToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles ,:Description, :text
  end
end
