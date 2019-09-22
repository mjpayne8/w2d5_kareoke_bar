require("minitest/autorun")
require("minitest/rg")
require_relative("../Song")
require_relative("../Guest")
require_relative("../Room")
require_relative("../Bar")

class TestBar < MiniTest::Test

  def setup
    @song = Song.new("Gangnam Style")
    @guest = Guest.new("Mark", @song, 50)
    @room = Room.new(1, 10, 1)
    @room.add_guest(@guest)
    @bar = Bar.new([@room])
  end

  def test_get_tab__returns_0()
    assert_equal(0, @bar.get_tab(@room))
  end

  def test_add_to_tab__guest_in_room_and_enough_money()
    @room.add_guest(@guest)
    @bar.add_to_tab(@room, @guest, 10)
    assert_equal(10, @bar.get_tab(@room))
    assert_equal(30, @guest.wallet_amount())
  end

end
