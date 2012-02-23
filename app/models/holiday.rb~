class Holiday < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date_from, :number_of_days, :date_to
  validates_presence_of :number_of_days
end
