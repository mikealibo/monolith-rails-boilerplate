namespace :admin do
  desc "Create a user"
  task create: :environment do
    email = ENV["EMAIL"] || "admin@example.com"
    password = ENV["PASSWORD"] || "password"

    user = User.new(
      email: email, 
      password: password, 
      password_confirmation: password
    )

    user.skip_confirmation!
    user.save!

    puts "User created: #{email}"
  end
end