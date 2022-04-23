class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_presence_of :movie, :list

  validates :list, uniqueness: { scope: :movie }
  validates :comment, presence: true, length: { minimum: 6 }
end
