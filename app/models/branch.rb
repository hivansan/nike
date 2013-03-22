class Branch < ActiveRecord::Base
  attr_accessible :delegation, :name, :state, :street, :town, :phone
end
