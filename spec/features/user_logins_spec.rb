require 'rails_helper'

RSpec.feature "UserLogins", type: :feature do
  describe "user login" do
    let(:user) {FactoryGirl.create(:user)}

    before(:each) do
      visit root_path
      click_link "Login"
      fill_in "user_email", with: user.email
      fill_in "user_password", with: user.password
      click_button "Log in"
    end

    it "allows successful login" do
      expect(page).to have_content("Signed in successfully")
    end
  end
end
