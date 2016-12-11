class Event < ActiveRecord::Base
  belongs_to :customer
  has_many :tasks, dependent: :destroy
  validates :name, :description, :start, :end, :location, :quote, :customer, presence: true
end
