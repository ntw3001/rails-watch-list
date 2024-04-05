class Bookmark < ApplicationRecord
  self.table_name = "plea_vi_bookmarks"
  belongs_to :list, foreign_key: "plea_vi_list_id"
  belongs_to :movie, foreign_key: "plea_vi_move_id"

  validates :comment, length: {minimum: 6}, allow_blank: true
  validates_uniqueness_of :list_id, :scope => [:movie_id]
end
