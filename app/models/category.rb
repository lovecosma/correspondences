class Category < ApplicationRecord
    has_many :correspondences
    validates :name, :presence => true, :uniqueness => true, length: {minimum: 2}
end
