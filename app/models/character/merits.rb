class Character
  module Merits
    @mental = []
    @physical= []
    @social = []
    
    class << self
      def all
        @mental + @physical + @social
      end
      def mental(name, cost, options)
        @mental.push([name, cost, options])
      end
      def physical(name, cost, options)
        @physical.push([name, cost, options])
      end
      def social(name, cost, options)
        @social.push([name, cost, options])
      end

    end
    mental "Common Sense", 4
    mental "Danger Sense", 2
    mental "Eidetic Memory", 2
    mental "Encyclopedic Knowledge", 4
    mental "Holistic Awareness", 3
    mental "Language", 1..3, :specialized => true
    mental "Meditative Mind", 1
    mental "Unseen Sense", 3, :specialized => true do
      prerequisite_faction "mortal"
      prerequisite_attribute "wits", 2
    end

    physical "Ambidextrous", 3
    physical "Brawling Dodge", 1 do
      prerequisite_skill "brawl", 1
      prerequisite_attribute "strength", 2
    end

    physical "Direction Sense", 1
    physical "Disarm", 2 do
      prerequisite_skill "weaponry", 2
      prerequisite_attribute "dexterity", 3
    end
    physical "Fast Reflexes", 1..2 do
      prerequisite_attribute "dexterity", 3
    end
    physical "Fighting Finesse", 2 do
      prerequisite_skill "weaponry", 2
      prerequisite_attribute "dexterity", 3
    end
    physical "Fighting Style: Boxing", 1..5 do
      prerequisite_skill "brawl", 2
      prerequisite_attribute "strength", 3
      prerequisite_attribute "stamina", 2
    end
    physical "Fighting Style: Kung Fu", 1..5 do
      prerequisite_skill "brawl", 2
      prerequisite_attribute "strength", 2
      prerequisite_attribute "stamina", 2
      prerequisite_attribute "dexterity", 2
    end
    physical "Fighting Style: Two Weapons", 1..4 do
      prerequisite_skill "weaponry", 3
      prerequisite_attribute "dexterity", 3
    end
    physical "Fleet of Foot", 1..3 do
      prerequisite_attribute "strength", 2
    end
    physical "Fresh Start", 1 do
      prerequisite_merit "fast_reflexes", 2
    end
    physical "Giant", 4
    physical "Gunslinger", 3 do
      prerequisite_skill "firearms", 3
      prerequisite_attribute "dexterity", 3
    end
    physical "Iron Stamina", 1..3 do
      prerequisite_one_of {
        prerequisite_attribute "stamina", 3
        prerequisite_attribute "resolve", 3
      }
    end
    physical "Iron Stomach", 2 do
      prerequisite_attribute "stamina", 2
    end
    physical "Natural Immunity", 1 do
      prerequisite_attribute "stamina", 2
    end
    physical "Quick Draw", 1 do
      prerequisite_attribute "dexterity", 3
    end
    physical "Quick Healer", 4 do
      prerequisite_attribute "stamina", 4
    end
    physical "Strong Back", 1 do
      prerequisite_attribute "strength", 2
    end
    physical "Strong Lungs", 3 do
      prerequisite_skill "athletics", 3
    end
    physical "Stunt Driver", 3 do
      prerequisite_attribute "dexterity", 3
    end
    physical "Toxin Resistance", 2 do
      prerequisite_attribute "stamina", 3
    end
    physical "Weaponry Dodge", 1 do
      prerequisite_attribute "strength", 2
      prerequisite_skill "weaponry", 1
    end

    social "Allies", 1..5
    social "Barfly", 1
    social "Contacts", 1..5
    social "Fame", 1..3
    social "Inspiring", 4 do
      prerequisite_attribute "presence", 4
    end
    social "Mentor", 1..5
    social "Resources", 1..5
    social "Retainer", 1..5
    social "Status: Other", 1..5, :specialized => true
    social "Status: Police", 1..5
    social "Status: Religion", 1..5 do
      prerequisite_skill_specialization "academics", "religion"
    end
    social "Status: Corporate", 1..5
    social "Status: Diplomat", 1..5 do
      prerequisite_skill "politics", 2
      prerequisite_skill "persuasion", 2
    end
    social "Status: Private Investigator", 1..5 do
      prerequisite_skill_specialization "academics", "Law"
    end
    social "Status: Demolitions Contractor", 1..5 do
      prerequisite_skill_specialization "science", "Demolitions"
    end
    social "Status: Medical", 1..5 do
      prerequisite_skill "medicine", 2
    end
    social "Status: Military", 1..5
    social "Status: Rotary Club", 1..5
    social "Striking Looks", [2, 4]

  end
end
