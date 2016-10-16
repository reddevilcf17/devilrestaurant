class FoodItem < ApplicationRecord
  is_impressionable
  belongs_to :section
  has_many :comments

  def self.search(search)
		where 'upper(name) LIKE ? or upper(description) LIKE ?', "%#{search}%".upcase, "%#{search}%".upcase
	end
end
