require 'rails_helper'

RSpec.describe Worker, type: :model do
  it {should belong_to(:user)}

  context "valid worker attributes" do
    it {validate_presence_of(:name)}

    describe "testing email or phone" do
      let(:worker) {FactoryGirl.create(:worker)}

      it "accepts a worker with email and no phone" do
        worker.email = ''
        expect(worker).to be_valid
      end

      it "accepts a worker with phone and no email" do
        worker.phone = ''
        expect(worker).to be_valid
      end

      it "does not accept a worker with no phone and no email" do
        worker.phone = ''
        worker.email = ''
        expect(worker).to_not be_valid
      end
    end

  end
end
