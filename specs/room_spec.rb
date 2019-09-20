require("minitest/autorun")
require("minitest/rg")
require_relative("../Song")
require_relative("../Guest")
require_relative("../Room")

class TestRoom  < MiniTest::Test
  def setup()
    @song = Song.new("Gangnam Style")
    @guest = Guest.new("Mark", @song, 50)
    @room = Room.new(1, 10)
  end

  def test_room_id__returns_1()
    assert_equal(1, @room.room_id())
  end

  def test_number_of_songs__returns_0()
    assert_equal(0, @room.number_of_songs)
  end

  def test_number_of_guests__returns_0()
    assert_equal(0, @room.number_of_guests)
  end

  #def test_add_song
  #  @room.add_song(@guest, @song)
  #end

end
