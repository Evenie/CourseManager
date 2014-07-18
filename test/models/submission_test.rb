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

require 'test_helper'

class SubmissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
