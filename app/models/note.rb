class Note < ApplicationRecord
    belongs_to :correspondence
    belongs_to :intention
    validates :content, :presence => true, length: {minimum: 2}
end
