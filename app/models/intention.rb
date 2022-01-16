class Intention < ApplicationRecord
    has_and_belongs_to_many :correspondences
    validates :name, presence: true, length: {minimum: 2}, uniqueness: true
    validate :lowercase


    def lowercase
        self.name = self.name.downcase
    end 
end
