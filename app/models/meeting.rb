class Meeting < ActiveRecord::Base
  belongs_to :assignature
  belongs_to :location
  belongs_to :schedule
end
