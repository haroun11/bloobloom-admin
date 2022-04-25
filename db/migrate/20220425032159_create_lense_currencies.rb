class CreateLenseCurrencies < ActiveRecord::Migration[6.1]
  def change
    create_table :lense_currencies do |t|
      t.references :currency
      t.references :lense
      t.float :price
      t.timestamps
    end
  end
end
