FactoryGirl.define do
  factory :group do
    trait :active do
      active true
    end

    trait :archived do
      active false
    end
  end
end