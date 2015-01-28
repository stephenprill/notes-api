class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.new(notes_params)
    @note.save
    @notes = Note.all
    render json: @notes
  end

  def show
    @note = Note.find(params[:id])
    render json: @note
  end

  def update
    @note = Note.find(params[:id])
    @note.update(params.require(:note).permit(:title, :body))
    render json: @note
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
