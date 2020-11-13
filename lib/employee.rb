class Employee < ActiveRecord::Base

  # one to one relation
  belongs_to :store  #, validate: true, required: true <-- by searching online, I also had found these solutions (use one of them only, ruby 2.3 vs 4) to express that an employee must always have a store that they belong to.

  # Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
  # Employees must always have a first name present
  # Employees must always have a last name present
  validates :store, :first_name, :last_name, presence: true

  # Employees have a hourly_rate that is a number (integer) between 40 and 200
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }

end
