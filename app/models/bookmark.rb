class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  has_one_attached :photo
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, scope: :list_id
end
