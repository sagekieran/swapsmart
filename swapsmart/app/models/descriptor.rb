class Descriptor < ActiveRecord::Base
  belongs_to :parent_descriptor, :class_name => "Descriptor",
    :foreign_key => "parent_descriptor_id"
  has_many :posts, through: :post_descriptors
end
