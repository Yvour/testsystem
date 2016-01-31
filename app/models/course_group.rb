class CourseGroup < ActiveRecord::Base
  belongs_to :course
  belongs_to :group, class_name: "StudentGroup", foreign_key: "group_id"
  
  def to_label
    
    "lol"
  end
end
