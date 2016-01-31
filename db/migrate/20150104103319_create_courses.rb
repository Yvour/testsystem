class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :discipline, index: true
      t.references :teacher, index: true
      t.string :coursename

      t.timestamps
    end
  end
end
