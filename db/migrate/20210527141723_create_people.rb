class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :terms_of_service
      t.string :eula

      t.timestamps
    end
  end
end
