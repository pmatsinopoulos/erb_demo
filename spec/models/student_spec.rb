RSpec.describe Student do
  describe '#initialize' do
    subject(:student_class) { described_class }

    it 'constructs a new object with correct attributes' do
      student = student_class.new(id: 1, first_name: 'Spider', last_name: 'Woman', contact_phone: '306972669', contact_email: 'spider@woman.net')

      expect(student.id).to eq(1)
      expect(student.first_name).to eq('Spider')
      expect(student.last_name).to eq('Woman')
      expect(student.contact_phone).to eq('306972669')
      expect(student.contact_email).to eq('spider@woman.net')
    end
  end
end
