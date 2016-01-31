class Discipline < ActiveRecord::Base
  
  
 def to_label
   "#{name}"
 end
end
