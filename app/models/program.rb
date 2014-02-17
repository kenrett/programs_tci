class Program < ActiveRecord::Base
  validates_presence_of :title, :subtitle, :code
  validates_length_of :code, is: 6, message: "is the wrong length (should be 6 characters)"
end
