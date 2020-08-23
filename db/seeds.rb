# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts 'Creating users.'
# 5.times do
#     User.create(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     password: '123456'
#   )
# puts 'Finished'
# end

# puts 'Sleep Records'
# User.all.each do |user|
#   SleepRecord.create(
#   user_id: user.id,
#   clockin_time: DateTime.new(2020, 8, 27, [12,13,14,15,16,17,18,19].sample),
#   clockout_time: DateTime.new(2020, 8, 27, [20,21,22,23,24,1,2,3,4,5].sample)
#   )
# end
# puts 'Finished'

# puts 'Sleep Records'
# User.all.each do |user|
#   SleepRecord.create(
#   user_id: user.id,
#   clockin_time: DateTime.new(2020, 8, 28, [12,13,14,15,16,17,18,19].sample),
#   clockout_time: DateTime.new(2020, 8, 28, [20,21,22,23,24,1,2,3,4,5].sample)
#   )
# end
# puts 'Finished'

# puts 'Sleep Records'
# User.all.each do |user|
#   SleepRecord.create(
#   user_id: user.id,
#   clockin_time: DateTime.new(2020, 8, 29, [12,13,14,15,16,17,18,19].sample),
#   clockout_time: DateTime.new(2020, 8, 29, [20,21,22,23,24,1,2,3,4,5].sample)
#   )
# end
# puts 'Finished'

# puts 'Sleep Records'
# User.all.each do |user|
#   SleepRecord.create(
#   user_id: user.id,
#   clockin_time: DateTime.new(2020, 8, 30, [12,13,14,15,16,17,18,19].sample),
#   clockout_time: DateTime.new(2020, 8, 30, [20,21,22,23,24,1,2,3,4,5].sample)
#   )
# end
# puts 'Finished'

# puts 'Sleep Records'
# User.all.each do |user|
#   SleepRecord.create(
#   user_id: user.id,
#   clockin_time: DateTime.new(2020, 8, 31, [12,13,14,15,16,17,18,19].sample),
#   clockout_time: DateTime.new(2020, 8, 31, [20,21,22,23,24,1,2,3,4,5].sample)
#   )
# end
# puts 'Finished'

# puts 'Friendship'
# User.all.limit(4).each do |user|
#   Friendship.create(
#   user_id: user.id.to_i,
#   friend_id: user.id.to_i + 1
#   )
# end
# puts 'Finished'
