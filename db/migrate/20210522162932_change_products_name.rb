class ChangeProductsName < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      change_table :products do |t|
        dir.up {t.change :name,:text}
        dir.down {t.change :name,:integer}
      end
    end
  end
end
