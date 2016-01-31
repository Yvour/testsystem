class CreateStudentGroupMemberships < ActiveRecord::Migration
  def change
    create_table :student_group_memberships do |t|
      t.references :student
      t.references :student_group

      t.timestamps
    end
  end
end
