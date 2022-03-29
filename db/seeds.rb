# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


response = RestClient.get 'https://randomuser.me/api/?format=json&results=30&inc=gender,name,email,picture&nat=br&seed=giga'
json = JSON.parse response

if !json.nil?
   json["results"].each do |i|
      Person.create!(
         gender: "#{i['gender']}", 
         title: "#{i['name']['title']}", 
         first_name: "#{i['name']['first']}", 
         last_name: "#{i['name']['last']}", 
         email: "#{i['email']}", 
         picture: "#{i['picture']['large']}"
      )
   end
   puts "Successfully"
else
   puts "error fetching data"
end
