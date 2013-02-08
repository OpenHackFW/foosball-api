class GamePresenter
  def initialize(game)
    @game = game
  end

  def as_json(*)
    @game.attributes
  end
end
