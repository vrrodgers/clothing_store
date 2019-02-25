require 'rails_helper'

RSpec.describe Category, type: :model do
 
  let(:category) { category.create!(name: "New name") }
  describe "attributes" do
     it " has a name attributes" do
       expect(category).to have_attributes(name: "New name")
     end
   end
end
