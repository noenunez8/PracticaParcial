class Nurse < ApplicationRecord
  has_many :vaccinations
  def full_name
    first_name + " " + last_name 
  end
end
