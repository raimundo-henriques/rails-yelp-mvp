class Restaurant < ApplicationRecord
# A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

# A restaurant must have a name, an address and a category.
validates :name, :address, :category, presence: true
validates :category, inclusion: { in: CATEGORIES }

# When a restaurant is destroyed, all of its reviews must be destroyed as well.
has_many :reviews, dependent: :destroy
end
