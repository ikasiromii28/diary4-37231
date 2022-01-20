FactoryBot.define do
  factory :diary do
    title      { Faker::Lorem.sentence}
    text       { Faker::Lorem.sentence}
    mood_id    { Faker::Number.between(from: 2, to: 10)}
    weather_id { Faker::Number.between(from: 2, to: 6)}
    association :user 

    after(:build) do |diary|
      diary.image.attach(io: File.open('public/images/test_image copy.png'), filename: 'test_image copy.png')
    end
  end
end
