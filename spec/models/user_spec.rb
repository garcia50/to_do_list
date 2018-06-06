require "rails_helper"

describe User do
  describe "Validations" do
    context "validates presence attriubutes" do
      it {should validate_presence_of :name}
      it {should validate_presence_of :email}

      it "it has a unique email" do
        create(:user)
        todo = build(:user, name: "Lou1", email: "lou1@gmail.com")
        expect(todo).to be_invalid
      end

    end
  end
end