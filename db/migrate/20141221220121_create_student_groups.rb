class CreateStudentGroups < ActiveRecord::Migration
  def change
    create_table :student_groups do |t|
      t.string :groupname

      t.timestamps
    end
    add_index :student_groups, :groupname, unique: true
  end
end
