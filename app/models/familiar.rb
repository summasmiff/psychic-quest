class Familiar < ActiveRecord::Base
  belongs_to :psychics
  validates_presence_of :personality
end
