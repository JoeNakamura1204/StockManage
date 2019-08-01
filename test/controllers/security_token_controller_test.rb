require 'test_helper'

class SecurityTokenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get security_token_index_url
    assert_response :success
  end

end
