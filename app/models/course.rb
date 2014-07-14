# == Schema Information
#
# Table name: courses
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  course_number :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Course < ActiveRecord::Base
  
  has_and_belongs_to_many :users
  has_many :assignments
  has_many :documents, :as => :attachable
  
  def self.courses_for_user(user)
    user.courses
  end
  
  def students
    users.select{|user| user.type.eql? "Student"}
  end
  
  def instructors
    users.select{|user| user.type.eql? "Instructor"}
  end
  
end
