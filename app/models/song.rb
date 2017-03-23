class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true, uniqueness:{scope: :artist}
end
