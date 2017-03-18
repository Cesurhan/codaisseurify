Song.delete_all
Artist.delete_all

# Artists
ed = Artist.create!(first_name: 'Ed', last_name: 'Sheeran', age: 26, origin: 'England')
sia = Artist.create!(first_name: 'Sia', last_name: 'Kate Isobelle Furler', age: 41, origin: 'Australia')
celeda = Artist.create!(first_name: 'Danny', last_name: 'Tenaglia', age: 56, origin: 'United States')

puts "#{Artist.all.size} artists created"

Song.create!([
               {
                 title: 'I see fire',
                 album: 'The Hobbit: The Desolation of Smaug',
                 release_date: DateTime.new(2013, 1, 1, 11),
                 nomination: 'Grammy',
                 artist: ed
               },
               {
                 title: 'Elastic Heart',
                 album: 'The Hunger Games: Catching Fire',
                 release_date: DateTime.new(2013, 1, 1, 11),
                 nomination: '',
                 artist: sia
               },
               {
                 title: 'Music is the answer',
                 album: 'Tourism',
                 release_date: DateTime.new(1998, 1, 1, 11),
                 nomination: '',
                 artist: celeda
               },
               {
                 title: 'Thinking out loud',
                 album: 'x',
                 release_date: DateTime.new(2014, 1, 1, 11),
                 nomination: 'Grammy',
                 artist: ed
               }
             ])

puts "#{Song.all.size} songs created"
