class CreateDescriptors < ActiveRecord::Migration
  def change
    create_table :descriptors do |t|
      t.string :description
      t.integer :parent_descriptor_id, index: true

      t.timestamps null: false
    end
  end
end
