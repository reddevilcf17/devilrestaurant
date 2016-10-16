require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get add_food" do
    get orders_add_food_url
    assert_response :success
  end

end
