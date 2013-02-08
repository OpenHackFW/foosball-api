class TeamsController < ApplicationController
  def create
    team = Team.new(params['team'])

    if team.save
      render json: TeamPresenter.new(team), status: :created, location: team
    else
      render json: {errors: team.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    team = Team.find(params[:id])

    render json: TeamPresenter.new(team)
  end
end
