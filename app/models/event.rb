class Event < ActiveRecord::Base
  belongs_to :customer
  has_many :tasks, dependent: :destroy
end
