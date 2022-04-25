class CreateFrameCurrencies < ActiveRecord::Migration[6.1]
  def change
    create_table :frame_currencies do |t|
      t.references :currency
      t.references :frame
      t.float :price
      t.timestamps
    end
  end
end
