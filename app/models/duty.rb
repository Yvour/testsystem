class Duty < ActiveRecord::Base
  belongs_to :Discipline
  belongs_to :Teacher
end
