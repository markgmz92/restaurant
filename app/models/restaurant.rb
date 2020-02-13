class Restaurant < ApplicationRecord
    has_many :dishes

    validates_presence_of :name, presence: true
end