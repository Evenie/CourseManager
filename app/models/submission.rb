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
  has_attached_file :file
  do_not_validate_attachment_file_type :file
end
