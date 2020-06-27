require 'date'

class Course
  attr_accessor :id,
                :title,
                :code
  attr_reader :starts_at

  def initialize(id:, title:, code:, starts_at:)
    self.id = id
    self.title = title
    self.code = code
    self.starts_at = starts_at
  end

  def starts_at=(value)
    @starts_at = DateTime.parse(value)
  end
end
