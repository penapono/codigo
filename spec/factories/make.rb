FactoryGirl.define do
  factory :make do
    sequence(:name) { |n| "Make Name #{n}" }
    sequence(:webmotors_id) { |n| n }

    trait :invalid do
      name nil
      webmotors_id nil
    end
  end
end
