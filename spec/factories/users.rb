FactoryBot.define do
  factory :user do
    sequence(:email) { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }

    # Skipping email confirmation (specific to Devise)
    after(:build) do |user|
      user.skip_confirmation!
    end 
  end
end
