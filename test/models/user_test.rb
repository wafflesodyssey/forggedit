require 'test_helper'

class UserTest < ActiveSupport::TestCase
  validates :email, format: {with: /@/}, uniqueness:true
  # test "the truth" do
  #   assert true
  # end



  def test_can_set_a_password
    user = User.new(email: 'example3@email.com')
    user.password = "dc_ror_june_is_awesome"
    assert_match /[A-Fa-f0-9]{64}/, user.password_digest
  end

  def test_can_check_password
    user = User.new(email: 'example3@example.com')
    user.password = "dc_ror_june_is_awesome"
    assert user.password_digest == "dc_ror_june_is_awesome"
    
  end
end
