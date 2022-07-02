require 'test_helper'

class ConversationsControllerTest < ActionDispatch::IntegrationTest
  test "should get messages" do
    get conversations_messages_url
    assert_response :success
  end

end
