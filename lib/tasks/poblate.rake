namespace :poblate do
  desc "poblating table people"
  task :students => :environment do
    30.times do |n|
      Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, last_name2: Faker::Name.last_name, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone)
      p ActionController::Base.helpers.pluralize(n+1, 'student')+" inserted"
    end
    3.times do |n|
      Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, last_name2: Faker::Name.last_name, email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone)
      p ActionController::Base.helpers.pluralize(n+1, 'student')+" inserted"
    end
  end
#  p"done.....126 records inserted"
end