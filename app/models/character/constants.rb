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

  end
end
