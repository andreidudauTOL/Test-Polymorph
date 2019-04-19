class Person < ApplicationRecord
    has_many :houses
    has_many :cats, through: :houses, source: :animal, source_type: 'Cat'
    has_many :dogs, through: :houses, source: :animal, source_type: 'Dog'

    has_many :bags
    has_many :electronics, through: :bags

    has_many :entities, through: :houses, source: :animal, source_type: Proc.new {|p| p.custom_type }

    def custom_type
        'Cat'
    end
end
