class User < ApplicationRecord
  has_many :groups, foreign_key: 'user_id', dependent: :destroy
  has_many :entities, foreign_key: 'user_id', dependent: :destroy
  validates :name, presence: true
end
