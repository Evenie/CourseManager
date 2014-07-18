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

require 'test_helper'

class AssignmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
