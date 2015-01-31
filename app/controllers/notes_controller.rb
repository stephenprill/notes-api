class NotesController < ApplicationController

  def index
    render json: Note.all
  end
  # def index
  #   @notes = Note.all
  #   render json: {notes: @notes}
  # end

  def create
    @note = Note.new(notes_params)
    @note.save
    @notes = Note.all
    render json: {note: @note}
  end

  def show
    @note = Note.find(params[:id])
    render json: {note: @note}
  end

  def update
    @note = Note.find(params[:id])
    @note.update(notes_params)
    render json: {note: @note}
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    head :no_content
  end

  def notes_params
    params.require(:note).permit(:title, :body)
  end

end
