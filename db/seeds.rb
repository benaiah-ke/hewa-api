# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting initial seeds..."

User.destroy_all
CarbonProject.destroy_all
Offsetter.destroy_all
Emmitter.destroy_all

puts "Resetting primary key sequence..."

ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = '#{t}'")
end

puts "Database reset complete!"
