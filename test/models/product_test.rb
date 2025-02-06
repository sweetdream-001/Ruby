require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  include ActionMailer::TestHelper

  test "sends email notifications when back in stock" do
    product = products(:tshirt)

    # Set product out of stock
    product.update(inventory_count: 0)

    assert_emails 2 do
      product.update(inventory_count: 99)
    end
  end
end
