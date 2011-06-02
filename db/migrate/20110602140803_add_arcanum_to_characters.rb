class AddArcanumToCharacters < ActiveRecord::Migration
  def change
    ["Prime", "Fate", "Mind", "Spirit", "Death", "Forces", "Time", "Space", "Life", "Matter"].each do |arcana|
      add_column :characters, arcana.downcase.to_sym, :integer, :default => 0
    end
  end
end
