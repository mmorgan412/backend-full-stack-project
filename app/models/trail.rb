class Trail < ApplicationRecord
  belongs_to :user

  def self.search(rating)
    where("rating LIKE ?", "%#{rating}%")
  end

end
