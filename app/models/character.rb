class Character < ActiveRecord::Base
    has_many :genders
    has_many :burial_gifts
end