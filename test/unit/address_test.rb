require File.dirname(__FILE__) + '/../test_helper'

class AddressTest < ActiveSupport::TestCase
  def test_should_have_street
    @address = Address.new(valid_address_object(:street => nil))
    assert !@address.save
  end
end
