class Student
  attr_accessor :id,
                :first_name,
                :last_name,
                :contact_phone,
                :contact_email

  def initialize(id:, first_name:, last_name:, contact_phone:, contact_email:)
    self.id = id
    self.first_name = first_name
    self.last_name = last_name
    self.contact_phone = contact_phone
    self.contact_email = contact_email
  end
end
