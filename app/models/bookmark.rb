class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: {minimum: 6}, allow_blank: true
  validates_uniqueness_of :list_id, :scope => [:movie_id]
end
