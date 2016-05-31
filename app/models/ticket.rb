class Ticket < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :event_id, :presence => true
  validates :price, :presence => true
  validates :title, :presence => true

  belongs_to :event
  
end
