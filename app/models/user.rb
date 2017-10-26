class User < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3, maximum: 50}, uniqueness: true
  validates :login, presence: true, length: {minimum: 3, maximum: 20}, uniqueness: true
  has_and_belongs_to_many :groups, :join_table => :users_groups
  has_many :posts
  has_many :comments
  has_secure_password
end
