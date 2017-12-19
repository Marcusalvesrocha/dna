require 'test_helper'

class Backoffice::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_users_index_url
    assert_response :success
  end

  test "should get new" do
    get backoffice_users_new_url
    assert_response :success
  end

end
