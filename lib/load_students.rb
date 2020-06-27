require 'csv'

def build_student_from_row(row)
  Student.new(
    id: row['ID'],
    first_name: row['FIRST_NAME'],
    last_name: row['LAST_NAME'],
    contact_phone: row['CONTACT_PHONE'],
    contact_email: row['CONTACT_EMAIL']
  )
end

def load_students(students_csv_file)
  result = []
  CSV.foreach(students_csv_file, headers: true).each do |row|
    result << build_student_from_row(row)
  end
  result
end
