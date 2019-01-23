require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_url
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post restaurants_url, params: { restaurant: { q1: @restaurant.q1, q10: @restaurant.q10, q11: @restaurant.q11, q12: @restaurant.q12, q13: @restaurant.q13, q14: @restaurant.q14, q15: @restaurant.q15, q16: @restaurant.q16, q17: @restaurant.q17, q18: @restaurant.q18, q19: @restaurant.q19, q2: @restaurant.q2, q20: @restaurant.q20, q21: @restaurant.q21, q22: @restaurant.q22, q23: @restaurant.q23, q24: @restaurant.q24, q25: @restaurant.q25, q26: @restaurant.q26, q27: @restaurant.q27, q28: @restaurant.q28, q29: @restaurant.q29, q3: @restaurant.q3, q30: @restaurant.q30, q31: @restaurant.q31, q32: @restaurant.q32, q33: @restaurant.q33, q34: @restaurant.q34, q35: @restaurant.q35, q36: @restaurant.q36, q37: @restaurant.q37, q38: @restaurant.q38, q39: @restaurant.q39, q4: @restaurant.q4, q40: @restaurant.q40, q5: @restaurant.q5, q6: @restaurant.q6, q7: @restaurant.q7, q8: @restaurant.q8, q9: @restaurant.q9 } }
    end

    assert_redirected_to restaurant_url(Restaurant.last)
  end

  test "should show restaurant" do
    get restaurant_url(@restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_url(@restaurant)
    assert_response :success
  end

  test "should update restaurant" do
    patch restaurant_url(@restaurant), params: { restaurant: { q1: @restaurant.q1, q10: @restaurant.q10, q11: @restaurant.q11, q12: @restaurant.q12, q13: @restaurant.q13, q14: @restaurant.q14, q15: @restaurant.q15, q16: @restaurant.q16, q17: @restaurant.q17, q18: @restaurant.q18, q19: @restaurant.q19, q2: @restaurant.q2, q20: @restaurant.q20, q21: @restaurant.q21, q22: @restaurant.q22, q23: @restaurant.q23, q24: @restaurant.q24, q25: @restaurant.q25, q26: @restaurant.q26, q27: @restaurant.q27, q28: @restaurant.q28, q29: @restaurant.q29, q3: @restaurant.q3, q30: @restaurant.q30, q31: @restaurant.q31, q32: @restaurant.q32, q33: @restaurant.q33, q34: @restaurant.q34, q35: @restaurant.q35, q36: @restaurant.q36, q37: @restaurant.q37, q38: @restaurant.q38, q39: @restaurant.q39, q4: @restaurant.q4, q40: @restaurant.q40, q5: @restaurant.q5, q6: @restaurant.q6, q7: @restaurant.q7, q8: @restaurant.q8, q9: @restaurant.q9 } }
    assert_redirected_to restaurant_url(@restaurant)
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete restaurant_url(@restaurant)
    end

    assert_redirected_to restaurants_url
  end
end
