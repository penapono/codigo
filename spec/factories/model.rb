FactoryGirl.define do
  factory :model do
    sequence(:name) { |n| "Model Name #{n}" }
    make

    trait :invalid do
      name nil
      make nil
    end
  end
end
