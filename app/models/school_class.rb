class SchoolClass < ApplicationRecord
  belongs_to :status
  belongs_to :room
end
