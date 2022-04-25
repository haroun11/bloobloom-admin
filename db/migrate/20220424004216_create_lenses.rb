class CreateLenses < ActiveRecord::Migration[6.1]
  def change
    create_table :lenses do |t|
      t.string :color
      t.text :description
      t.integer :prescription_type
      t.integer :lens_type
      t.integer :stock

      t.timestamps
    end
  end
end
