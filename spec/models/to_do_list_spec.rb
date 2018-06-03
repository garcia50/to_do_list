require "rails_helper"

describe ToDoList do
  describe "Validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :day}
  end
end