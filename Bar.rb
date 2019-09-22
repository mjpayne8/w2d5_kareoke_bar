class Bar

  def initialize(room_list)
    @room_list = room_list
    @tab = Hash.new(0)
  end

  def get_tab(room)
    return @tab[room.room_id]
  end

  def add_to_tab(room, guest, amount)
    if room.includes_guest?(guest) && @room_list.include?(room)
      @tab[room.room_id] =  amount if guest.pay_from_wallet(amount)
    end
  end

  def number_of_rooms()
    return @room_list.length()
  end

end
