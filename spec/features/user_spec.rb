require 'rails_helper'    

describe "As a user" do
  describe "when I visit the To Do List login" do
    it "I see a login feature" do
      visit '/'

      expect(page).to have_content("TO")
      expect(page).to have_content("DO")
      expect(page).to have_content("LIST")
      expect(page).to have_content("Login")
      expect(page).to have_content("Create An Account")
    end
  end

  describe "when I click on Login" do 
    it "takes me to a page to enter my login info" do
      visit '/'
      click_on "Login"

      expect(current_path).to eq(login_path)
    end

    it "I enter my login info" do
      user = User.create!(name: "joe", email: "joe@gmail.com", password: "pass")
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/'
      click_on "Login"

      expect(current_path).to eq(login_path)

      within(".form-group"){ fill_in("email", with: "joe@gmail.com")}
      within(".form-pass"){ fill_in("password", with: "pass")}

      click_on "Login"

      expect(page).to have_content("joe's To Do List")
    end
  end

end
