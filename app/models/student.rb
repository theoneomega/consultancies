class Student < ActiveRecord::Base
  has_many :schedule_students
  validates :email, :first_name, :last_name, :last_name2, :presence => true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  def fullname
    "#{self.first_name} #{self.last_name} #{self.last_name2}"
  end
end
