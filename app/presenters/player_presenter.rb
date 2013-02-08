class PlayerPresenter
  def initialize(player)
    @player = player
  end

  def as_json(*)
    @player.attributes
  end
end
