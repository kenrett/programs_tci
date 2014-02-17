class Program < ActiveRecord::Base
  validates_presence_of :title, :subtitle, :code
  validates_length_of :code, :maximum => 6, too_long: "is too long (maximum is 6 characters)"
end
