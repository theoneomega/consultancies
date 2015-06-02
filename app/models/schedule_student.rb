class ScheduleStudent < ActiveRecord::Base
  belongs_to :schedule
  belongs_to :student
  
  validates_uniqueness_of :student_id,:scope => :schedule_id
end
