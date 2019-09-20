require("minitest/autorun")
require("minitest/rg")
require_relative("../Song")
require_relative("../Guest")
require_relative("../Room")

class TestRoom  < MiniTest::Test
  def setup()
    @song = Song.new("Gangnam Style")
    @guest = Guest.new("Mark", @song, 50)
    @guest_2 = Guest.new("James", @song, 50)
    @room = Room.new(1, 10, 2)
    @room_2 = Room.new(1, 100, 1)
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

  def test_add_guest__enough_money__gets_added()
    @room.add_guest(@guest)
    assert_equal(1, @room.number_of_guests())
  end

  def test_add_guest__not_enough_money_not_added()
    @room_2.add_guest(@guest)
    assert_equal(0, @room_2.number_of_guests())
  end

  # def test_add_song__guest_not_in_room_no_change_to_song_list()
  #  @room.add_song(@guest, @song)
  #  assert_equal(0, @room.number_of_songs())
  # end
  #
  # def test_add_song__guest_in_room_add_to_song_list()
  #  @room.add_song(@guest, @song)
  #  assert_equal(1, @room.number_of_songs())
  # end

end
