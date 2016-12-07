class Task < ActiveRecord::Base
  belongs_to :event
  validates :name, :description, :quote, :event, presence: true
end
