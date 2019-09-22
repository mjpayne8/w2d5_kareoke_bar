require("pry")

class Room

  attr_reader(:room_id, :money_collected)

  def initialize(room_id, fee, room_max)
    @room_id = room_id
    @fee = fee
    @songs = {}
    @guests = []
    @room_max = room_max
    @money_collected = 0
  end

  def number_of_songs()
    return @songs.length()
  end

  def number_of_guests()
    return @guests.length()
  end

  def add_guest(guest)
    if @room_max > number_of_guests() && guest.wallet_amount >= @fee
      guest.pay_from_wallet(@fee) #had this as second argument in && but was always called even if first logical was false
      increase_money_collected(@fee)
      @guests.push(guest)
      return guest.whoo if @songs.values.any? {|song| song == guest.favourite_song()}
    end
  end

  def add_song(guest,song)
    @songs[guest.name] = song if @guests.include?(guest)
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def increase_money_collected(amount)
    @money_collected += amount
  end

  def call_customer_to_sing(guest)
    if @songs.keys.include?(guest.name)
      return "Now #{guest.name} will sing #{@songs[guest.name].name}"
    end
  end

  def includes_guest?(guest)
    return @guests.include?(guest)
  end

end
