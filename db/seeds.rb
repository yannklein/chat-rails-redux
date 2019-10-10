# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Message.destroy_all
User.destroy_all
Channel.destroy_all

Channel.create(name: 'general')
Channel.create(name: 'tokyo')
Channel.create(name: 'starwars')

User.create(email: 'yann@klein.com', password: '1234567890')
User.create(email: 'doug@berkley.com', password: '1234567890')

Message.create(content: 'Hi Doug!', user_id: 1, channel_id: 1)
Message.create(content: 'Hi Yann! How\'re you doing?', user_id: 2, channel_id: 1)

Message.create(content: 'Tokyo is great!', user_id: 1, channel_id: 2)
Message.create(content: 'Yeah reeaaaaally amazing!', user_id: 2, channel_id: 2)

