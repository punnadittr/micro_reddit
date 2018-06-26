require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "test", content: "also this is a test", user_id: 1)
  end

  test "post title should not be empty" do
    @post.title = "        "
    assert_not @post.valid?
  end

  test "post body should not be empty" do
    @post.content = " "
    assert_not @post.valid?
  end

  test "post title should not exceed 100 chars" do
    @post.title = "a" * 101
    assert_not @post.valid?
  end
  
  test "post body should not exceed 1000 chars" do
    @post.content = "a" * 1001
    assert_not @post.valid?
  end
end
