require 'rails_helper'

RSpec.describe Schedule, type: :model do
  it {should belong_to(:user)}

  describe "valid schedule attributes" do
    let (:schedule){FactoryGirl.create(:schedule)}

    it "has valid attributes" do
      expect(schedule).to have_attributes(title: schedule.title, due_at: schedule.due_at, user_id: schedule.user_id)
    end
  end
end
