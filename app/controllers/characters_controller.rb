class CharactersController < ApplicationController

  def show
    @character = Character.find_or_create_by_name(params[:id])
  end
  def edit
    @character = Character.find_or_create_by_name(params[:id])
  end

  # PUT /characters/1
  # PUT /characters/1.json
  def update
    @character = Character.find_or_create_by_name(params[:id])

    respond_to do |format|
      if @character.update_attributes(params[:character])
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

end
