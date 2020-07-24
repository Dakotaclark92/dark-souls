class Character < ActiveRecord::Base
    has_many :names
    has_many :genders
    has_many :burial_gifts
    has_many :subclasses
end