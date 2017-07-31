require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end
end
