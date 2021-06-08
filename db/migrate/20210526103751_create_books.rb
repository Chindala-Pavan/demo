class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.belongs_to :author #,foreign_key: true
      t.datetime :published_at
      t.timestamps
    end

=begin
      t.text :title
      t.integer :year_published
      t.string :isbn
      t.decimal :price 
      t.boolean :out_of_print
      t.integer :views
      t.references :supplier, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
=end

    
  end
end
