require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  setup do
    @event = events(:one)
    @customer = customers(:one)
  end
  
  test 'should not save empty event' do
    event = Event.new
    event.save
    refute event.valid?
  end
  
  test 'should save valid event' do
    event = Event.new
    event.name = @event.name
    event.description = @event.description
    event.quote  = @event.quote
    event.paid = @event.paid
    event.customer = @customer
    event.start = @event.start
    event.end = @event.end
    event.location = @event.location
    event.quote = @event.quote
    event.save
    assert event.valid?
  end
end
