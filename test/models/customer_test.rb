require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  setup do
    @customer=customers(:one)
  end
  
  test 'should not save empty customer' do
    customer = Customer.new
    customer.save
    refute customer.valid?
  end
  
  test 'should save valid customer' do
    customer = Customer.new
    customer.forename = @customer.forename
    customer.surname = @customer.surname
    customer.email = @customer.email + "12"
    customer.phone = @customer.phone
    customer.save
    assert customer.valid?
  end
  
  test 'should not save duplicate email' do
    customer = Customer.new
    customer.forename = @customer.forename
    customer.surname = @customer.surname
    customer.email = @customer.email + "12"
    customer.phone = @customer.phone
    customer.save
    assert customer.valid?
    customer1 = Customer.new
    customer1.forename = @customer.forename
    customer1.surname = @customer.surname
    customer1.email = @customer.email + "12"
    customer1.phone = @customer.phone
    customer1.save
    refute customer1.valid?
  end
  
  
  test 'should not save customer with email of incorrect format' do
    customer1 = Customer.new
    customer1.forename = @customer.forename
    customer1.surname = @customer.surname
    customer1.email = "abc"
    customer1.phone = @customer.phone
    customer1.save
    refute customer1.valid?
  end
end
