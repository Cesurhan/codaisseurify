class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end

# # To store files localy in "public" folder:
# class ImageUploader < CarrierWave::Uploader::Base
#   storage :file
#
#   def store_dir
#     "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
#   end
# end
