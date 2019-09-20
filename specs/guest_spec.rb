require("minitest/autorun")
require("minitest/rg")
require_relative("../Guest")

class TestGuest < MiniTest::Test

  def setup()
    @guest = Guest.new("Mark", "Gangnam_style", 50)
  end

  def test_guest_name__returns_mark()
    assert_equal("Mark", @guest.name())
  end

  def test_guest_favourite_song__returns_gangnam_style()
    assert_equal("Mark", @guest.favourite_song())
  end

end
