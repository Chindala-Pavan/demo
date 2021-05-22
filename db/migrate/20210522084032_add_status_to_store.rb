class AddStatusToStore < ActiveRecord::Migration[6.1]
  def change
    add_column :stores ,:status,:integer
    add_column :stores ,:type,:string
  end
end
