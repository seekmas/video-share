require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "say_hi" do
    mail = UserMailer.say_hi
    assert_equal "Say hi", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
