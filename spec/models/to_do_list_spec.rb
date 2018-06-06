require "rails_helper"

describe ToDoList, type: :model do
  describe "Validations" do
    context "validates presence attriubutes" do
      it {should validate_presence_of :users_id}
      it {should validate_presence_of :day}
      it {should validate_presence_of :task}
    end
  end
end