class Chain < ActiveRecord::Base
  
  cattr_reader :per_page
  @@per_page = 5
  
  has_many :stores
end
