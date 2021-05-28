class AddIndexesToComments < ActiveRecord::Migration[6.1]
  def change
    add_index :comments, [:commenter,:body]
  end
end
