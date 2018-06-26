class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 1000 }
  belongs_to :user
  has_many :comments
end
