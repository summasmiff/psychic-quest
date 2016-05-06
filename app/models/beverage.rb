class Beverage < ActiveRecord::Base
  belongs_to :psychics
  validates_presence_of :flavor
end
