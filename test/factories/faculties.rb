FactoryBot.define do
  factory :faculty do
    first_name { "Chadi" }
    last_name { "Aoun" }
    association :department
    rank { "Professor" }
    active { true }
  end
end
