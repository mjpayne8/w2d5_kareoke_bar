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
    @room.add(@guest)
    @bar = Bar.new([@room])
  end

  def test_get_tab__returns_0()
    assert_equal(0, Bar.tab(@room))
  end

end
