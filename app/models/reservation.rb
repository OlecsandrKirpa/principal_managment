class Reservation < ApplicationRecord
  belongs_to :room
  belongs_to :teacher
  belongs_to :school_class
  belongs_to :hour
end
