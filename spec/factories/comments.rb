FactoryBot.define do
  factory :comment do
    message { Faker::Lorem.characters(number:20) }
    user
    cat_image
  end
end