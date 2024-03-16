# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

begin
user = User.where(email: "Danieleaston10@gmail.com").first_or_initialize
user.update!(
    password: "Password",
    password_confirmation: "Password"
)
rescue ActiveRecord::RecordInvalid => e
    puts "User creation failed: #{e.message}"
  end