class Program < ActiveRecord::Base
  validates_presence_of :title, :subtitle
  
end
