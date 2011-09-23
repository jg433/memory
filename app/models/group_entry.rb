# == Schema Information
# Schema version: 20110922161009
#
# Table name: group_entries
#
#  id         :integer(4)      not null, primary key
#  word_id    :integer(4)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class GroupEntry < ActiveRecord::Base
  has_many :words
  
  attr_accessible :word_id, :name
  
  validates :word_id, :presence => true
  validates :name, :presence => true
  
end
