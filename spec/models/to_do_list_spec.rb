require "rails_helper"

describe ToDoList do
  # subject {described_class}
  describe "Validations" do
    it {should validate_presence_of :name}

    # it "validates presence of name" do
      # require 'pry'; binding.pry
      # expect(ToDoList).to validate_presence_of :name
    it {should validate_presence_of :day}
    # end
  end
end