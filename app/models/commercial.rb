# == Schema Information
#
# Table name: commercials
#
#  id    :integer          not null, primary key
#  image :string(100)
#  video :string(100)
#

class Commercial < ActiveRecord::Base
  attr_accessible :image, :video
  
  mount_uploader :image, ImageUploader
  mount_uploader :video, ImageUploader
end
