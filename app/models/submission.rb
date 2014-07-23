# == Schema Information
#
# Table name: submissions
#
#  id            :integer          not null, primary key
#  score         :integer
#  grade         :string(1)
#  assignment_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#  student_id    :integer
#

class Submission < ActiveRecord::Base
  belongs_to :assignments
  has_many :documents, :as => :attachable
  
  accepts_nested_attributes_for :documents
  
  def assignment
    Assignment.find(assignment_id)
  end
  
  def student
    Student.find(student_id)
  end
  
  def self.grades
    grades = ["A", "B", "C", "D", "F", "I"]
  end
  
end
