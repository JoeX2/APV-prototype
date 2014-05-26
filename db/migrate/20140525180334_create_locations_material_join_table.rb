class CreateLocationsMaterialJoinTable < ActiveRecord::Migration
  def change
    create_table :locations_materials, id:false do |t|
      t.integer :location_id
      t.integer :material_id
    end
  end
end
