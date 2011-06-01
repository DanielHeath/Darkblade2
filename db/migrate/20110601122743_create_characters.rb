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

class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :intelligence, :default => 1
      t.integer :wits, :default => 1
      t.integer :resolve, :default => 1
      t.integer :strength, :default => 1
      t.integer :dexterity, :default => 1
      t.integer :stamina, :default => 1
      t.integer :presence, :default => 1
      t.integer :manipulation, :default => 1
      t.integer :composure, :default => 1

      SKILLS.each {|skill| t.integer skill.downcase.to_sym, :default => 0 }

      t.timestamps
    end
  end
end
