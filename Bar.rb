class Bar

  def initialize(room_list)
    @room_list = room_list
    @tab = Hash.new(0)
  end

  def get_tab(room)
    return @tab[room.room_id]
  end

end
