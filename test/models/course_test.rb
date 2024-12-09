require "test_helper"

class CourseTest < ActiveSupport::TestCase
  test 'course attributes should not be empty' do
    course = Course.new
    assert course.invalid?
    assert course.errors[:title].any?
    assert course.errors[:description]
end
