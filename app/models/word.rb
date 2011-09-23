# == Schema Information
# Schema version: 20110922144025
#
# Table name: words
#
#  id         :integer(4)      not null, primary key
#  fr         :string(255)
#  de         :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# SQL an der Konsole verfolgen: 
# $ tail -f log/development.log


class Word < ActiveRecord::Base
  belongs_to :group
  
  attr_accessible :fr, :de

  validates :fr, :presence => true
  validates :de, :presence => true

  
end
