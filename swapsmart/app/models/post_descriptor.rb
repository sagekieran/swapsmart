class PostDescriptor < ActiveRecord::Base
  belongs_to :post
  belongs_to :descriptor
end
