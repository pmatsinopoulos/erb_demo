require 'csv'

def build_student_course_from_row(row)
  StudentCourse.new(
    id: row['ID'],
    student_id: row['STUDENT_ID'],
    course_id: row['COURSE_ID']
  )
end

def load_student_courses(student_courses_csv_file)
  result = []
  CSV.foreach(student_courses_csv_file, headers: true).each do |row|
    result << build_student_course_from_row(row)
  end
  result
end
