# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  university_id          :integer
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  type                   :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
   test "Users have the proper name" do
     assert_equal users(:anne).name, 'Anne'
     assert_equal users(:bob).name, 'Bob'
     assert_equal users(:jill).name, 'Jill'
   end
   
   test "Users have the proper type" do
     assert_equal users(:anne).type, 'Admin'
     assert_equal users(:bob).type, 'Instructor'
     assert_equal users(:jill).type, 'Student'
   end
   
   test "Users should not save without name" do
     assert true
   end
   
  
end
