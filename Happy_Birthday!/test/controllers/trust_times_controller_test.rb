require 'test_helper'

class TrustTimesControllerTest < ActionController::TestCase
  setup do
    @trust_time = trust_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trust_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trust_time" do
    assert_difference('TrustTime.count') do
      post :create, trust_time: { Happy_Birthday: @trust_time.Happy_Birthday, birthdate: @trust_time.birthdate, done: @trust_time.done, notes: @trust_time.notes }
    end

    assert_redirected_to trust_time_path(assigns(:trust_time))
  end

  test "should show trust_time" do
    get :show, id: @trust_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trust_time
    assert_response :success
  end

  test "should update trust_time" do
    patch :update, id: @trust_time, trust_time: { Happy_Birthday: @trust_time.Happy_Birthday, birthdate: @trust_time.birthdate, done: @trust_time.done, notes: @trust_time.notes }
    assert_redirected_to trust_time_path(assigns(:trust_time))
  end

  test "should destroy trust_time" do
    assert_difference('TrustTime.count', -1) do
      delete :destroy, id: @trust_time
    end

    assert_redirected_to trust_times_path
  end
end
