class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :thumbnail do
    eager
    resize_to_fit(300, 300)
    cloudinary_transformation quality: 80
  end
end

# # To store files localy in "public" folder:
# class ImageUploader < CarrierWave::Uploader::Base
#   storage :file
#
#   def store_dir
#     "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
#   end
# end
