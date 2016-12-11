require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
    @event = events(:one)
    @customer = customers(:one)
    @event.customer = @customer
    @task.event = @event
  end

  test "should get index" do
    get :index, event_id: @event
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new, event_id: @event
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { description: @task.description, event_id: @event, name: @task.name, quote: @task.quote }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task, event_id: @event
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task, task: { description: @task.description, event_id: @event, name: @task.name, quote: @task.quote }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
