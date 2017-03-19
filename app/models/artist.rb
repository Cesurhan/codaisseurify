class Artist < ApplicationRecord
  has_many :songs
  has_many :photos

  def full_name
    "#{first_name} #{last_name}"
  end
end
