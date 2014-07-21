# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  course_id  :integer
#  title      :string(255)
#

class Assignment < ActiveRecord::Base
  belongs_to :courses
  belongs_to :students
  has_many :submissions
  has_many :documents, :as => :attachable
  
  accepts_nested_attributes_for :documents
  
  def associated_course
    course = Course.find(course_id)
  end
  
end
