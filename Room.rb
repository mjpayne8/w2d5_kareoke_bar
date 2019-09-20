class Room

  attr_reader(:room_id)

  def initialize(room_id, fee)
    @room_id = room_id
    @fee = fee
    @songs = {}
    @guests = []
  end

end
