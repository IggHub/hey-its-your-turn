FactoryGirl.define do
  factory :schedule do
    sequence(:id) {|n| n}
    title "Some task"
    user
    due_at (Time.now + 10.hours)
  end
end
