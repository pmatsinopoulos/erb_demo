RSpec.describe StudentCourse do
  describe '#initialize' do
    subject(:student_course_class) { described_class }

    it 'constructs a new object with correct attributes' do
      student_course = student_course_class.new(id: 1, student_id: 2, course_id: 3)

      expect(student_course.id).to eq(1)
      expect(student_course.student_id).to eq(2)
      expect(student_course.course_id).to eq(3)
    end
  end
end
