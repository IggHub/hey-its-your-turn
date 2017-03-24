require 'rails_helper'

RSpec.describe User, type: :model do
  context "valid user attributes" do
    let(:user) {FactoryGirl.build(:user)}

    it "save the specified attributes" do
      expect(user).to have_attributes(name: user.name, email: user.email, password: user.password)
    end
    
    it "accepts valid user" do
      expect(user).to be_valid
    end

    it "does not accept invalid name" do
      user.name = ''
      expect(user).to_not be_valid
    end

    it "does not accept invalid email" do
      user.email = ''
      expect(user).to_not be_valid
      user.email = 'blablah=email.com'
      expect(user).to_not be_valid
    end

    it "does not accept invalid password" do
      user.password = 'abc'
      user.password_confirmation = 'abc'
      expect(user).to_not be_valid
      user.password = 'abcdefghijklmno'
      user.password_confirmation = 'abcdefghijklmno'
      expect(user).to be_valid
    end
  end

  context "user worker associations" do

    it {should have_many(:workers)}

  end
end
