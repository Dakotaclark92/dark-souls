class Burial_Gift < ActiveRecord::Base
    belongs_to :user
    belongs_to :characters through: :users
end