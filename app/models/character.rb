class Character < ActiveRecord::Base
  include Character::Constants
  accessible = %w{id intelligence wits resolve strength dexterity stamina presence manipulation composure academics computer crafts investigation medicine occult politics science athletics brawl drive firearms larceny stealth survival weaponry animal_ken empathy expression intimidation persuasion socialize streetwise subterfuge prime fate mind spirit death forces time space life matter}
  accessible.each {|a| attr_accessible a.to_sym }


  def to_param
    id
  end

  def to_s
    id
  end
end
