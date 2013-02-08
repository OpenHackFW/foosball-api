class Game
  include MongoMapper::Document

  one :home_team, class_name: "Team", required: true
  one :away_team, class_name: "Team", required: true

  timestamps!
end
