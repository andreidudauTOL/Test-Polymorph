class Electronic < ApplicationRecord
    has_many :bags
    has_many :people, through: :bags
end
