# Codaisseurify

A rails app to create artists and albums. This app uses [Cloudinary](http://cloudinary.com/).

<img width="1162" alt="screen shot 2017-05-05 at 16 46 54" src="https://cloud.githubusercontent.com/assets/15831300/25750812/2f7b1932-31b3-11e7-8613-a51f91c7d1b9.png">

## Steps

These are the steps I followed when working on this app:

1. Setting up project
2. Adding RSpec, Bootstrap
3. Generating models
4. Adding seeds
5. Adding views
6. Adding Cloudinary
7. Refactoring

## Database Structure

1. Artist
  
  * first_name:string
  * last_name:string
  * age:integer
  * origin:string
  
2. Song

  * title:string
  * album:string
  * release_date:date
  
3. Photo

  * artist_id:integer(belongs_to :artist)
  * image:string
  
## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:Cesurhan/codaisseurify.git
cd codaisseurify
bundle install
rails db:create db:migrate db:seed
rails server
```

## Related documentation

For more information about using CarrierWave and Cloudinary, see these links:

* [CarrierWave](https://github.com/carrierwaveuploader/carrierwave)
* [Cloudinary](http://cloudinary.com/documentation/rails_integration#getting_started_guide)
