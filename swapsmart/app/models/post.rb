class Post < ActiveRecord::Base
  belongs_to :user
  has_many :descriptors, through: :post_descriptors
end
