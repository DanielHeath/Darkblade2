class Character < ActiveRecord::Base
  include Character::Constants
  validates_uniqueness_of :name
  validates_presence_of :name

  def to_param
    name
  end

end
