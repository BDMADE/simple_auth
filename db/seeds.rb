# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#User.create(first_name:'Tanbir',last_name: 'Hasan',email: 'admin@z.com',password_digest:'$2a$10$2lwFLI.SwjWWrJ.uKzqDNuDyYoZB77VfzOmIWUoER.6UWSIVX7Iay',role_id:'1',created_at:'2016-04-16 16:36:38.583019',updated_at:'2016-04-16 16:36:38.583019')
Role.create(name: 'admin')
Role.create(name: 'staff')
User.create(first_name:'Tanbir',last_name: 'Hasan',email: 'a@z.com',password:'z',role_id:'1')