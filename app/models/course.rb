class Course < ActiveRecord::Base
  belongs_to :discipline
  belongs_to :teacher
  
  has_many :course_groups
  has_many :groups, through: :course_groups
  
  accepts_nested_attributes_for :course_groups
end
