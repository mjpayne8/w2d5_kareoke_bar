class Guest

  attr_reader(:name, :favourite_song, :wallet_amount)

  def initialize(name, favourite_song, wallet_amount)
    @name = name
    @favourite_song = favourite_song
    @wallet_amount = wallet_amount
  end

  def whoo()
    return "Whoo!"
  end

end
