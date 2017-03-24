require 'rails_helper'

RSpec.feature "UserLogins", type: :feature do
  describe "user login" do
    let(:user) {FactoryGirl.create(:user)}

    before(:each) do
      login user
    end

    it "allows successful login" do
      expect(page).to have_content("Signed in successfully")
    end
  end
end
