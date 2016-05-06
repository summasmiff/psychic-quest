class Psychic < ActiveRecord::Base
  has_one :familiars
  has_many :beverages
end
