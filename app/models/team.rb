class Team
  include MongoMapper::Document

  attr_accessor :name

  key :name,       String, required: true
  key :player_ids, Array

  timestamps!

  belongs_to :game

  many :players, in: :player_ids
end
