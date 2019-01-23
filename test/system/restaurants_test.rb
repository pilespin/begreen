require "application_system_test_case"

class RestaurantsTest < ApplicationSystemTestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "visiting the index" do
    visit restaurants_url
    assert_selector "h1", text: "Restaurants"
  end

  test "creating a Restaurant" do
    visit restaurants_url
    click_on "New Restaurant"

    fill_in "Q1", with: @restaurant.q1
    fill_in "Q10", with: @restaurant.q10
    fill_in "Q11", with: @restaurant.q11
    fill_in "Q12", with: @restaurant.q12
    fill_in "Q13", with: @restaurant.q13
    fill_in "Q14", with: @restaurant.q14
    fill_in "Q15", with: @restaurant.q15
    fill_in "Q16", with: @restaurant.q16
    fill_in "Q17", with: @restaurant.q17
    fill_in "Q18", with: @restaurant.q18
    fill_in "Q19", with: @restaurant.q19
    fill_in "Q2", with: @restaurant.q2
    fill_in "Q20", with: @restaurant.q20
    fill_in "Q21", with: @restaurant.q21
    fill_in "Q22", with: @restaurant.q22
    fill_in "Q23", with: @restaurant.q23
    fill_in "Q24", with: @restaurant.q24
    fill_in "Q25", with: @restaurant.q25
    fill_in "Q26", with: @restaurant.q26
    fill_in "Q27", with: @restaurant.q27
    fill_in "Q28", with: @restaurant.q28
    fill_in "Q29", with: @restaurant.q29
    fill_in "Q3", with: @restaurant.q3
    fill_in "Q30", with: @restaurant.q30
    fill_in "Q31", with: @restaurant.q31
    fill_in "Q32", with: @restaurant.q32
    fill_in "Q33", with: @restaurant.q33
    fill_in "Q34", with: @restaurant.q34
    fill_in "Q35", with: @restaurant.q35
    fill_in "Q36", with: @restaurant.q36
    fill_in "Q37", with: @restaurant.q37
    fill_in "Q38", with: @restaurant.q38
    fill_in "Q39", with: @restaurant.q39
    fill_in "Q4", with: @restaurant.q4
    fill_in "Q40", with: @restaurant.q40
    fill_in "Q5", with: @restaurant.q5
    fill_in "Q6", with: @restaurant.q6
    fill_in "Q7", with: @restaurant.q7
    fill_in "Q8", with: @restaurant.q8
    fill_in "Q9", with: @restaurant.q9
    click_on "Create Restaurant"

    assert_text "Restaurant was successfully created"
    click_on "Back"
  end

  test "updating a Restaurant" do
    visit restaurants_url
    click_on "Edit", match: :first

    fill_in "Q1", with: @restaurant.q1
    fill_in "Q10", with: @restaurant.q10
    fill_in "Q11", with: @restaurant.q11
    fill_in "Q12", with: @restaurant.q12
    fill_in "Q13", with: @restaurant.q13
    fill_in "Q14", with: @restaurant.q14
    fill_in "Q15", with: @restaurant.q15
    fill_in "Q16", with: @restaurant.q16
    fill_in "Q17", with: @restaurant.q17
    fill_in "Q18", with: @restaurant.q18
    fill_in "Q19", with: @restaurant.q19
    fill_in "Q2", with: @restaurant.q2
    fill_in "Q20", with: @restaurant.q20
    fill_in "Q21", with: @restaurant.q21
    fill_in "Q22", with: @restaurant.q22
    fill_in "Q23", with: @restaurant.q23
    fill_in "Q24", with: @restaurant.q24
    fill_in "Q25", with: @restaurant.q25
    fill_in "Q26", with: @restaurant.q26
    fill_in "Q27", with: @restaurant.q27
    fill_in "Q28", with: @restaurant.q28
    fill_in "Q29", with: @restaurant.q29
    fill_in "Q3", with: @restaurant.q3
    fill_in "Q30", with: @restaurant.q30
    fill_in "Q31", with: @restaurant.q31
    fill_in "Q32", with: @restaurant.q32
    fill_in "Q33", with: @restaurant.q33
    fill_in "Q34", with: @restaurant.q34
    fill_in "Q35", with: @restaurant.q35
    fill_in "Q36", with: @restaurant.q36
    fill_in "Q37", with: @restaurant.q37
    fill_in "Q38", with: @restaurant.q38
    fill_in "Q39", with: @restaurant.q39
    fill_in "Q4", with: @restaurant.q4
    fill_in "Q40", with: @restaurant.q40
    fill_in "Q5", with: @restaurant.q5
    fill_in "Q6", with: @restaurant.q6
    fill_in "Q7", with: @restaurant.q7
    fill_in "Q8", with: @restaurant.q8
    fill_in "Q9", with: @restaurant.q9
    click_on "Update Restaurant"

    assert_text "Restaurant was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurant" do
    visit restaurants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurant was successfully destroyed"
  end
end
