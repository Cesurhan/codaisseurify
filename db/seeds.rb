Photo.delete_all
Song.delete_all
Artist.delete_all

# Photos
photo1 = Photo.create!(remote_image_url: 'http://res.cloudinary.com/dr08wglx5/image/upload/v1489921746/440px-Ed_Sheeran_2013_yntsng.jpg')
photo2 = Photo.create!(remote_image_url: 'http://res.cloudinary.com/dr08wglx5/image/upload/v1489921811/440px-Sia_Seattle__28cropped_29_kswdnn.jpg')
photo3 = Photo.create!(remote_image_url: 'http://res.cloudinary.com/dr08wglx5/image/upload/v1489921848/300px-Danny_Tenaglia_cropped_ayl1jd.jpg')

puts "#{Photo.all.size} photos created"

# Artists
ed = Artist.create!(first_name: 'Ed', last_name: 'Sheeran', age: 26, origin: 'England', photos: [photo1])
sia = Artist.create!(first_name: 'Sia', last_name: 'Kate Isobelle Furler', age: 41, origin: 'Australia', photos: [photo2])
celeda = Artist.create!(first_name: 'Danny', last_name: 'Tenaglia', age: 56, origin: 'United States', photos: [photo3])

puts "#{Artist.all.size} artists created"

# Songs
Song.create!([
               {
                 title: 'I see fire',
                 album: 'The Hobbit: The Desolation of Smaug',
                 release_date: DateTime.new(2013, 1, 1, 11),
                 award: '',
                 artist: ed
               },
               {
                 title: 'Elastic Heart',
                 album: 'The Hunger Games: Catching Fire',
                 release_date: DateTime.new(2013, 1, 1, 11),
                 award: '',
                 artist: sia
               },
               {
                 title: 'Music is the answer',
                 album: 'Tourism',
                 release_date: DateTime.new(1998, 1, 1, 11),
                 award: '',
                 artist: celeda
               },
               {
                 title: 'Thinking out loud',
                 album: 'x',
                 release_date: DateTime.new(2014, 1, 1, 11),
                 award: 'Grammy',
                 artist: ed
               }
             ])

puts "#{Song.all.size} songs created"
