require 'erb'
require 'fileutils'

def send_email(email_content, email_to)
  File.write(File.join('emails', "#{email_to}.txt"), email_content)
end

def send_welcome_emails(all_courses, students, student_courses, template_file_name)
  template = File.read(template_file_name)
  FileUtils.mkdir_p 'emails'

  students.each do |student|
    student_courses_of_student = student_courses.select { |sc| sc.student_id == student.id }
    if student_courses_of_student.size >= 1
      # +full_name+ and +courses+ are used by ERB, thanks to the `binding`
      full_name = "#{student.first_name} #{student.last_name[0]}."
      courses = student_courses_of_student.map { |scos| all_courses.find { |c| c.id == scos.course_id } }

      b = binding
      email_content = ERB.new(template, trim_mode: '-').result(b)
      send_email(email_content, student.contact_email)
    end
  end
end
