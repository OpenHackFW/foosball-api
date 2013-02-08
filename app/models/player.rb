class Player
  include MongoMapper::Document

  attr_accessible :first_name,
                  :last_name

  key :first_name, String, required: true
  key :last_name,  String, required: true

  timestamps!
end
