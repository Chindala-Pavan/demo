class BooksOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :books_orders do |t|
      t.belongs_to :book, foreign_key: true, index: true
      t.belongs_to :order, foreign_key: true, index: true
    end
  end
end
