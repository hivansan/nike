# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  description :string(600)      not null
#  image       :string(100)
#  category_id :integer          not null
#  video       :string(100)
#  qr_code_img :string(100)
#

class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :image, :name, :video, :qr_code_img
  belongs_to :category
  
  mount_uploader :image, ImageUploader
  mount_uploader :video, ImageUploader
  mount_uploader :qr_code_img, ImageUploader
  
end
