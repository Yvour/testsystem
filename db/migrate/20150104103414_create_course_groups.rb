class CreateCourseGroups < ActiveRecord::Migration
  def change
    create_table :course_groups do |t|
      t.references :course, index: true
      t.references :group, index: true
      t.string :coursename

      t.timestamps
    end
  end
end
