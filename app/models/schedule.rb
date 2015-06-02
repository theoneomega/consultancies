class Schedule < ActiveRecord::Base

  belongs_to :teacher

  has_many :schedule_students, :dependent => :destroy
  has_many :students, :through => :schedule_students

  accepts_nested_attributes_for :schedule_students, :reject_if => :all_blank


  def detail
    I18n.l self.meeting, :format => "%a, %d %b %Y %I:%M:%S %p %Z"
  end
end
