class CreateDataLetters < ActiveRecord::Migration
  def change
    create_table :data_letters do |t|
      t.string :titel
      t.text :text
      t.references :material, index: true

      t.timestamps
    end
  end
end
