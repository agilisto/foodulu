class Store < ActiveRecord::Base
  belongs_to :chain
  
  cattr_reader :per_page
  @@per_page = 5
  
  validates_presence_of :title
end
