require "test_helper"

class CourseTest < ActiveSupport::TestCase
    should have_many(:assignments)
    should have_many(:faculties).through(:assignments)

end
