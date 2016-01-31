class Student < TestSystemUser
  has_one :student_group_membership
  belongs_to :student_group 
   default_scope {where(accesslevel: 4)}
 

  def to_label
    "#{firstname} #{middlename} #{lastname}"
  end
  
  validates_presence_of :student_group_membership
  
  accepts_nested_attributes_for :student_group_membership
 
end
