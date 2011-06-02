class Character
  module Constants
    MENTAL_SKILLS =   [ "Academics", 
	                "Computer", 
	                "Crafts", 
	                "Investigation", 
	                "Medicine", 
	                "Occult", 
	                "Politics", 
	                "Science"]
    PHYSICAL_SKILLS = [ "Athletics", 
	                "Brawl", 
	                "Drive",
	                "Firearms",
	                "Larceny",
	                "Stealth",
	                "Survival",
	                "Weaponry"]
    SOCIAL_SKILLS =   [ "Animal Ken", 
	                "Empathy", 
	                "Expression",
	                "Intimidation",
	                "Persuasion",
	                "Socialize",
	                "Streetwise",
	                "Subterfuge"]
    SKILLS_BY_TYPE = [MENTAL_SKILLS, 
	              PHYSICAL_SKILLS, 
	              SOCIAL_SKILLS]
    SKILLS = SKILLS_BY_TYPE.flatten

    MENTAL_ATTRS              = ["Intelligence", "Wits", "Resolve"]
    PHYSICAL_ATTRS            = ["Strength", "Dexterity", "Stamina"]
    SOCIAL_ATTRS              = ["Presence", "Manipulation", "Composure"]

    ATTRS_BY_TYPE = [ MENTAL_ATTRS, 
                      PHYSICAL_ATTRS, 
                      SOCIAL_ATTRS]

    ATTRS = ATTRS_BY_TYPE.flatten

    ATTRS_STARTING_POINTS     = [5, 4, 3]
    ATTRS_STARTING_POINT_COST = [0, 0, 01, 02, 03, 05]
    ATTR_XP_COSTS             = [0, 5, 15, 30, 50, 75]

    SKILL_STARTING_POINTS       = [11, 7, 3]
    SKILLS_STARTING_POINT_COST  = [0, 1, 2, 03, 04, 06]
    SKILL_XP_COSTS              = [0, 3, 9, 18, 30, 45]

    SPECIALIZATION_COST = 3

    MERIT_STARTING_POINTS       = 7
    MERIT_STARTING_POINT_COST   = [0, 1, 2, 03, 04, 06]
    MERIT_XP_COSTS              = [0, 2, 6, 12, 20, 30]


    ARCANUM = {
      "Prime" => "Subtle magic which changes (or stops) other spells and restores mana",
      "Fate" => "Subtle magic which reads (or changes) destiny and luck",
      "Mind" => "Subtle magic that pries at the minds of others",
      "Spirit" => "Subtle magic that lets you bargain with spirits (who can do pretty much anything)",
      "Death" => "Subtle magic of darkness, decay, souls, death and undeath",
      "Forces" => "Obvious magic that controls heat, light, electricity, radiation, gravity and kinetic energy",
      "Time" => "Obvious magic that alters time itself",
      "Space" => "Obvious magic that grants powers like teleportation and scrying. Space 2 can be combined with other arcanum to effect distant targets",
      "Life" => "Obvious magic; healing, transforming, strengthening or weakening",
      "Matter" => "Obvious magic which manipulates all forms of unliving matter",
    }
  end
end
