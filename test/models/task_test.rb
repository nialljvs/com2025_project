require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  setup do
    @task = tasks(:one)
    @event = events(:one)
  end
  
  test 'should not save empty task' do
    task = Task.new
    task.save
    refute task.valid?
  end
  
  test 'should save valid task' do
    task = Task.new
    task.name = @task.name
    task.description = @task.description
    task.quote  = @task.quote
    task.event = @event
    task.save
    assert task.valid?
  end
end
