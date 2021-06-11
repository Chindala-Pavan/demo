class CreateManifests < ActiveRecord::Migration[6.1]
  def change
    create_table :manifests do |t|
      t.belongs_to :assembly
      t.belongs_to :part
      t.datetime :published_at

      t.timestamps
    end
  end
end
