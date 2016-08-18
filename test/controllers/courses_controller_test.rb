# == Schema Information
#
# Table name: courses
#
#  id           :integer          not null, primary key
#  title        :string
#  description  :text
#  price        :integer
#  is_hidden    :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  image        :string
#  teacher_name :string
#

require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end
