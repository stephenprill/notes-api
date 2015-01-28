class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create

  end

  def show
  end

  def update
  end

  def destroy
  end



end
