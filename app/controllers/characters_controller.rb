class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    redirect_to edit_character_url params[:id]
  end

  def new
    @character = Character.new
  end

  def create
    update
  end

  def edit
    @character = Character.find_or_initialize_by_id(params[:id])
  end

  # PUT /characters/1
  # PUT /characters/1.json
  def update
    @character = Character.find_or_initialize_by_id(params[:id])
    @character.id = params[:id] # mass-assignment protection
    respond_to do |format|
      if @character.update_attributes(params[:character])
        format.html { redirect_to edit_character_url(@character), notice: 'Character was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

end
