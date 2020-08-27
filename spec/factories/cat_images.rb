FactoryBot.define do
  factory :cat_image do
    catname { Faker::Lorem.characters(number:5) }
    memo { Faker::Lorem.characters(number:20) }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixture/catimage.jpg'), 'image/jpg') }
    user

  end
end