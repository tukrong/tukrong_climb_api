class Climb < ApplicationRecord
  belongs_to :user
  validates :route_name, :route_grade, :number_of_tries, :did_send, :user, presence: true
end
