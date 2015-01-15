require 'faker'

5.times do
  User.create(
    name: Faker::Name.name,
    handle: Faker::Internet.user_name,
    email: Faker::Internet.safe_email,
    password: Faker::Internet.user_name
    )
end

(1..5).to_a.each do |user_id|
  5.times do
    Tweet.create(
      content: Faker::Lorem.sentence,
      user_id: user_id
    )
  end
end
