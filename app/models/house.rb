class House < ApplicationRecord
    belongs_to :person
    belongs_to :animal, polymorphic: true

    # belongs_to :cat, -> { where(houses: {animal_type: 'Cat'}) }, foreign_key: 'animal_id'
end
