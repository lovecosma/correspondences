class Correspondence < ApplicationRecord
    belongs_to :category 
    has_and_belongs_to_many :intentions
    has_many :notes, dependent: :destroy
    validates :name, :presence => true, length: {minimum: 1}
    validate :uniqueness_with_category

    def uniqueness_with_category
        correspondence = Correspondence.find_by(name: self.name, category_id: self.category_id)       
        self.errors.add(:name, "#{self.name} exists within this category.") if correspondence
    end 

   
end
