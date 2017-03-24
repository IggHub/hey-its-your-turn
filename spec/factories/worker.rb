FactoryGirl.define do
  factory :worker do
    sequence(:name) {|n| "worker#{n}"}
    sequence(:email) {|n| "worker#{n}@email.com"}
    phone "123-456-7890"
    user
    schedule
  end
end
