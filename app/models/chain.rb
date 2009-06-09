class Chain < ActiveRecord::Base
  
  cattr_reader :per_page
  @@per_page = 5
  
  validates_presence_of :title
  validates_uniqueness_of :title
  
  has_many :stores
end
