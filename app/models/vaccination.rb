class Vaccination < ApplicationRecord
  belongs_to :kid
  belongs_to :nurse
  belongs_to :vaccine
end
