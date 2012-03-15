require 'faker'
require 'populator'
require 'sha1'

User.destroy_all
Holiday.destroy_all

10.times do
 user = User.new
 user.username = Faker::Internet.user_name
 user.email = Faker::Internet.email
 user.password = "test"
 user.password_confirmation = "test"
 user.save
end

User.all.each do |user|
 Holiday.populate(5..10) do |holiday|
  holiday.user_id =  user.id
  holiday.number_of_days = "3"
  holiday.date_from = Date.today
  holiday.date_to = Date.today
 end
end
