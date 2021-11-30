require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'user with valid email should be valid' do
    user = User.new(email: 'luiz1987@gmail.com', password_digest: 'teste')
    assert user.valid?
  end

  test 'user with invalid email should be invalid' do
    user = User.new(email: 'holacompa.com', password_digest: 'teste')
    assert_not user.valid?
  end
  
  test 'user with taken email should be invalid' do
    other_user = users(:one)
    user = User.new(email: other_user.email, password_digest: 'teste')
    assert_not user.valid?
  end
end
