class Subclass < ActiveRecord::Base
    belongs_to :user
    belongs_to :characters through: :users
end