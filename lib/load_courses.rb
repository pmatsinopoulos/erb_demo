require 'csv'

def build_course_from_row(row)
  Course.new(
    id: row['ID'],
    title: row['TITLE'],
    code: row['CODE'],
    starts_at: row['STARTS_AT']
  )
end

def load_courses(courses_csv_file)
  result = []
  CSV.foreach(courses_csv_file, headers: true).each do |row|
    result << build_course_from_row(row)
  end
  result
end
