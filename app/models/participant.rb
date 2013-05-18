# == Schema Information
#
# Table name: participants
#
#  id       :integer          not null, primary key
#  name     :string(255)      not null
#  email    :string(255)      not null
#  celphone :string(20)       not null
#

class Participant < ActiveRecord::Base
  attr_accessible :celphone, :email, :name
end
