class StudentCourse
  attr_accessor :id, :student_id, :course_id

  def initialize(id:, student_id:, course_id:)
    self.id = id
    self.student_id = student_id
    self.course_id = course_id
  end
end
