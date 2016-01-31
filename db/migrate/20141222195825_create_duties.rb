class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.references :Discipline, index: true
      t.references :Teacher, index: true

      t.timestamps
    end
  end
end
