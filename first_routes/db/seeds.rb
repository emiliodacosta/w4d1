# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all

a = User.create!(username: Faker::Name.name)
b = User.create!(username: Faker::Name.name)
c = User.create!(username: Faker::Name.name)
d = User.create!(username: Faker::Name.name)



a1 = Artwork.create!(title: Faker::TwinPeaks.location, image_url: 'www.instagram.com/p/BUAKl_mhbBb/?taken-by=lilcollin', artist_id: a.id)
b1 = Artwork.create!(title: Faker::TwinPeaks.location, image_url: 'www.instagram.com/p/BTz3G6YB6FV/?taken-by=lilcollin', artist_id: b.id)
c1 = Artwork.create!(title: Faker::TwinPeaks.location, image_url: 'www.instagram.com/p/BUCjr1EhBkg/?taken-by=lilcollin', artist_id: c.id)
d1 = Artwork.create!(title: Faker::TwinPeaks.location, image_url: 'www.instagram.com/p/BS9Oas7hxlR/?taken-by=lilcollin', artist_id: d.id)



a2 = ArtworkShare.create!(artwork_id: a1.id, viewer_id: b.id)
b2 = ArtworkShare.create!(artwork_id: c1.id, viewer_id: a.id)
