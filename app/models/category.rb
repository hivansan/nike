# == Schema Information
#
# Table name: categories
#
#  id   :integer          not null, primary key
#  name :string(100)      not null
#

class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :products
end
