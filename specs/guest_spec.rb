require("minitest/autorun")
require("minitest/rg")
require_relative("../Guest")

class TestGuest < MiniTest::Test

  def setup()
    @guest = Guest.new("Mark", "Gangnam_Style", 50)
  end

  def test_guest_name__returns_mark()
    assert_equal("Mark", @guest.name())
  end

  def test_guest_favourite_song__returns_gangnam_style()
    assert_equal("Gangnam_Style", @guest.favourite_song())
  end

  def test_wallet_amount__returns_50()
    assert_equal(50, @guest.wallet_amount())
  end

  def test_whoo__returns_whoo()
    assert_equal("Whoo!", @guest.whoo())
  end

  def test_pay_from_wallet__10_returns_true_wallet_amount_40()
    result = @guest.pay_from_wallet(10)
    assert_equal(true, result)
    assert_equal(40, @guest.wallet_amount)
  end

  def test_pay_from_wallet__100_returns_false_wallet_amount_50()
    result = @guest.pay_from_wallet(10)
    assert_equal(false, result)
    assert_equal(50, @guest.wallet_amount)
  end
end
