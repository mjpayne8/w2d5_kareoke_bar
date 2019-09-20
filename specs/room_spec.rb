require("minitest/autorun")
require("minitest/rg")
require_relative("../Song")
require_relative("../Guest")
require_relative("../Room")

class TestRoom  < MiniTest::Test
  def setup()
    @song = Song.new("Gangnam Style")
    @guest = Guest.new("Mark", "Gangnam_Style", 50)
    @room = Room.new(1, 10)
  end

  def test_room_id__returns_1()
    assert_equal(1, @room.room_id())
  end


end
