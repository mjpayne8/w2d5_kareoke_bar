require("minitest/autorun")
require("minitest/rg")
require_relative("../Guest")

class TestGuest < MiniTest::Test

  def setup()
    @guest = Guest.new("Mark", "Gangnam_style", 50)
  end

  def test_guest_name__mark()
    assert_equal("Mark", @guest.name)
  end

end
