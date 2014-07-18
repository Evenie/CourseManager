class MoveStudentIdToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :student_id, :integer
    remove_column :assignments, :student_id, :integer
  end
end
