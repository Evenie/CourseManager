class RemoveInstructorIdFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :instructor_id
  end
end
