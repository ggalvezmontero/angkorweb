require 'test_helper'

class O7invoiceControllerTest < ActionController::TestCase
  test "should get pecave" do
    get :pecave
    assert_response :success
  end

end
