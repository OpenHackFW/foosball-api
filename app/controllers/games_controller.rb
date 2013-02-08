class GameController < ApplicationController
  def create
    game = Game.new(params['game'])

    if game.save
      render json: GamePresenter.new(game), status: :created, location: game
    else
      render json: {errors: game.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    game = Game.find(params[:id])

    render json: GamePresenter.new(game)
  end
end

