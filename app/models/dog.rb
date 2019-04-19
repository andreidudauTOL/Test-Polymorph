class Dog < ApplicationRecord
    has_many :houses, as: :animal
    has_many :people, through: :houses
end
