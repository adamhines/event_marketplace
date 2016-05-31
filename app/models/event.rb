class Event < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :date, :presence => true

  has_many :tickets, :class_name => "Ticket", :foreign_key => "event_id"

end
