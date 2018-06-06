FactoryBot.define do 

  factory :to_do_list do
    sequence(:day) { |n| "Day #{n}"}
    sequence(:name) { |n| "chore #{n}"}
  end

  factory :user do
    sequence(:name) { |n| "Lou#{n}"}
    sequence(:email) { |n| "lou#{n}@gmail.com"}
    sequence(:password) { |n| "pass#{n}"}
  end
end