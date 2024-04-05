class Movie < ApplicationRecord
  self.table_name = "plea_vi_movies"
  has_many :bookmarks
  # has_many :lists, through: :bookmarks

  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end
