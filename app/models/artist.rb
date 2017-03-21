class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
