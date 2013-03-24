class Commercial < ActiveRecord::Base
  attr_accessible :image, :video
  
  mount_uploader :image, ImageUploader
  mount_uploader :video, ImageUploader
end
