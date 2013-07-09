require 'test_helper'

class ProblemsControllerTest < ActionController::TestCase
  setup do
    @problem = problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create problem" do
    assert_difference('Problem.count') do
      post :create, problem: { accepted: @problem.accepted, description: @problem.description, hint: @problem.hint, input: @problem.input, memory_limit: @problem.memory_limit, output: @problem.output, sample_input: @problem.sample_input, sample_output: @problem.sample_output, source: @problem.source, submit: @problem.submit, time_limit: @problem.time_limit, title: @problem.title }
    end

    assert_redirected_to problem_path(assigns(:problem))
  end

  test "should show problem" do
    get :show, id: @problem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @problem
    assert_response :success
  end

  test "should update problem" do
    patch :update, id: @problem, problem: { accepted: @problem.accepted, description: @problem.description, hint: @problem.hint, input: @problem.input, memory_limit: @problem.memory_limit, output: @problem.output, sample_input: @problem.sample_input, sample_output: @problem.sample_output, source: @problem.source, submit: @problem.submit, time_limit: @problem.time_limit, title: @problem.title }
    assert_redirected_to problem_path(assigns(:problem))
  end

  test "should destroy problem" do
    assert_difference('Problem.count', -1) do
      delete :destroy, id: @problem
    end

    assert_redirected_to problems_path
  end
end
