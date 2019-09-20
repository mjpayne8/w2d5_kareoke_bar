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
    @room = Room.new(1, 10, 1)
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

  def test_add_guest__enough_money_gets_added()
    @room.add_guest(@guest)
    assert_equal(1, @room.number_of_guests())
    assert_equal(40, @guest.wallet_amount())
  end

  def test_add_guest__not_enough_money_not_added()
    @room_2.add_guest(@guest)
    assert_equal(0, @room_2.number_of_guests())
    assert_equal(50, @guest_2.wallet_amount())
  end

  def test_add_guest__enough_room__gets_added()
    @room.add_guest(@guest)
    assert_equal(1, @room.number_of_guests())
    assert_equal(40, @guest.wallet_amount())
  end

  def test_add_guest__not_enough_room_not_added()
    @room.add_guest(@guest)
    @room.add_guest(@guest_2)
    assert_equal(0, @room_2.number_of_guests())
    assert_equal(50, @guest_2.wallet_amount())
  end

  def test_add_song__guest_not_in_room_no_change_to_song_list()
    @room.add_song(@guest, @song)
    assert_equal(0, @room.number_of_songs())
  end

  def test_add_song__guest_in_room_add_to_song_list()
    @room.add_guest(@guest)
    @room.add_song(@guest, @song)
    assert_equal(1, @room.number_of_songs())
  end

  def test_remove_guest__guest_removed_from_guests()
    @room.add_guest(@guest)
    @room.remove_guest(@guest)
    assert_equal(0, @room.number_of_guests())
  end

  def test_add_guest__returns_whoo()
    @room_3 = Room.new(1, 10, 3)
    @room_3.add_guest(@guest)
    @room_3.add_song(@guest, @song)
    assert_equal("Whoo!", @room_3.add_guest(@guest_2))
  end

end
