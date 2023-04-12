require "test_helper"

class UniversitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get universities_new_url
    assert_response :success
  end

  test "should get create" do
    get universities_create_url
    assert_response :success
  end
end
