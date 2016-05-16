class Article < ApplicationRecord
  has_many :versions
  has_many :permissions

  validates :title, presence: true, length: { minimum: 1 }
end
