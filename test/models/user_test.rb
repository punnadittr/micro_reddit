require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", email: "something@something.com")
  end

  test "user's name should not be empty" do
    @user.name = "        "
    assert_not @user.valid?
  end

  test "user's name should not exceed 50 chars" do
    @user.name = "a" * 52
    assert_not @user.valid?
  end
end
