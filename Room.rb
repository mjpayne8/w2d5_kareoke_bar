class Room

  attr_reader(:room_id)

  def initialize(room_id, fee, room_max)
    @room_id = room_id
    @fee = fee
    @songs = {}
    @guests = []
    @room_max = room_max
  end

  def number_of_songs()
    return @songs.length()
  end

  def number_of_guests()
    return @guests.length()
  end

  def add_guest(guest)
    if @room_max > number_of_guests() && guest.wallet_amount >= @fee 
      guest.pay_from_wallet(@fee)
      @guests.push(guest)
    end
  end


end
