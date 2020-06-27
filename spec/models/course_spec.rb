RSpec.describe Course do
  describe '#initialize' do
    subject(:course_class) { described_class }

    it 'constructs a new object with correct attributes' do
      course = course_class.new(id: 1, title: 'Programming with Ruby', code: 'PRG-RUBY', starts_at: '2020-09-01T08:00:00+00:00')

      expect(course.id).to eq(1)
      expect(course.title).to eq('Programming with Ruby')
      expect(course.code).to eq('PRG-RUBY')
      expect(course.starts_at).to eq(DateTime.new(2020, 9, 1, 8, 0, 0))
    end
  end
end
