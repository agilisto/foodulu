class Store < ActiveRecord::Base
  belongs_to :chain
  
  validates_presence_of :title
end
