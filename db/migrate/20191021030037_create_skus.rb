class CreateSkus < ActiveRecord::Migration[5.2]
  def change
    create_table :skus do |t|
      t.string :name
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
