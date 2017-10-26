class User < ApplicationRecord
  has_and_belongs_to_many :groups, :join_table => :users_groups
  has_many :posts
  has_many :comments
end
