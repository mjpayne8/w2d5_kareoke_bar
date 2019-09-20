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

  def pay_from_wallet(amount)
    return false if amount > @wallet_amount
    @wallet_amount -= amount
    return true
  end

end
