require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should return contact email" do
    mail = ContactMailer.contact_email("matthew@me.com","Matthew Casey", "1234567890", @message = "Hello")
    assert_equal ['ns00382@surrey.ac.uk'],mail.to
    assert_equal ['nialljvs@gmail.com'],mail.from
  end
end
