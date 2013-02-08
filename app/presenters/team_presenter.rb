class TeamPresenter
  def initialize(team)
    @team = team
  end

  def as_json(*)
    @team.attributes
  end
end
