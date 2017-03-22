FactoryGirl.define do
  factory :worker do
    sequence(:email) {|n| "worker#{n}@email.com"}
    phone "123-456-7890"
    user
  end
end
