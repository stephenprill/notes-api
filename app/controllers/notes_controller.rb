class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end
  
  def create
    @note = Note.new(params.require(:note).permit(:title, :body))
  end

  def show
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    @note.update(params.require(:note).permit(:title, :body))
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
  end



end
