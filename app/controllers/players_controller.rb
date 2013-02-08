class PlayersController < ApplicationController
  def create
    player = Player.new(params['player'])

    if player.save
      render json: PlayerPresenter.new(player), status: :created, location: player
    else
      render json: {errors: player.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    player = Player.find(params[:id])

    render json: PlayerPresenter.new(player)
  end
end
