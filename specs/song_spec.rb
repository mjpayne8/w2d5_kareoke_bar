require("minitest/autorun")
require("minitest/rg")
require_relative("../Song")

class TestSong < MiniTest::Test

  def test_song_name__returns_gangnam_style
    @song = Song.new("Gangnam Style")
    assert_equal("Gangnam Style", @song.name)
  end

end
