require 'rails_helper'

#Test Suite for the Restaurant model

RSpec.describe Restaurant, type: :model do
#Association test
#ensure Restaurant has a 1:m relationship with the Dishes model

    it "is valid with a name" do
    expect(Restaurant.new(title: 'Kopitiam')).to be_valid
    end
end
