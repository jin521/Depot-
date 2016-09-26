require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#column #side a', minimum:4  # inside '' are css selectors, this test is to verify that there are minimum 4 such elements
    assert_select '#main .entry', 3  #verify there are 3 elements with class name of entry
    assert_select 'h3', 'Programming Ruby 1.9'  #verify there is a h3 elements with title "  "
    assert_select '.price' , /\$[,\d]+\. \d\d/  # verify if the price is formatted correctly 
  end

end
