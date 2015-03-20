class CreatePostDescriptors < ActiveRecord::Migration
  def change
    create_table :post_descriptors do |t|
      t.references :post, index: true
      t.references :descriptor, index: true

      t.timestamps null: false
    end
    add_foreign_key :post_descriptors, :posts
    add_foreign_key :post_descriptors, :descriptors
  end
end
