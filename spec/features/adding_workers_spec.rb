require 'rails_helper'

RSpec.feature "AddingWorkers", type: :feature do
  describe "logged in user adding workers" do
    let(:user) {FactoryGirl.build(:user)}
    let(:worker) {FactoryGirl.build(:worker)}

    before(:each) do
      login user
    end
=begin
    it "adds new worker" do
      visit new_worker_path
      fill_in "worker_name", with: worker.name
      fill_in "worker_email", with: worker.email
      fill_in "worker_phone", with: worker.phone
      worker.user_id = user.id
      click_button "Create Worker"
      expect(page).to have_content ("Congratulations!")
    end
=end
  end
end
