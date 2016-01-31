class StudentGroup < ActiveRecord::Base
  has_many :student_group_membership
  has_many :student, through: :student_group_membership
  
  has_many :course_groups, foreign_key: "group_id"
  has_many :courses, through: :course_groups  
  
  
  def to_label
    "#{groupname}"
  end
end
