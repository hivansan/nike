# == Schema Information
#
# Table name: branches
#
#  id         :integer          not null, primary key
#  name       :string(100)
#  street     :string(100)
#  phone      :string(50)
#  delegation :string(100)
#  town       :string(100)
#  state      :string(100)
#

class Branch < ActiveRecord::Base
  attr_accessible :delegation, :name, :state, :street, :town, :phone
end
