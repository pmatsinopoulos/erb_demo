$LOAD_PATH.unshift('.')

require 'all'

courses = load_courses(File.join(__dir__, 'courses.csv'))

students = load_students(File.join(__dir__, 'students.csv'))

student_courses = load_student_courses(File.join(__dir__, 'student_courses.csv'))

send_welcome_emails(
  courses,
  students,
  student_courses,
  File.join(__dir__, 'templates', 'welcome.txt.erb')
)
