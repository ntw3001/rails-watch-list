class List < ApplicationRecord
  self.table_name = "plea_vi_lists"
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo

  validates :name, uniqueness: true, presence: true
end
