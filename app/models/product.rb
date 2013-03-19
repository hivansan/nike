# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  description :string(100)      not null
#  image       :string(100)
#  category_id :integer          not null
#  video       :string(100)
#

class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :image, :name, :video
  belongs_to :category
  
  mount_uploader :image, ImageUploader
end
