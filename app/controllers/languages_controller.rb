class LanguagesController < ApplicationController
  before_action :set_language, only: [:show, :edit, :update, :destroy]

  def index
    @languages = Language.all
  end

  def show
    # Finds the language to be shown by calling set_language
  end

  def new
    @language = Language.new
  end

  def create
    @language = Language.new(language_params)

    if @language.save
      redirect_to @language, notice: 'Language was successfully created.'
    else
      render :new
    end
  end

  def edit
    # Finds the language to be edited by calling set_language
  end

  def update
    if @language.update(language_params)
      redirect_to @language, notice: "Language was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @language.destroy
    redirect_to languages_url, notice: "Language was successfully destroyed."
  end

  private

  def set_language
    @language = Language.find(params[:id])
  end

  def language_params
    params.require(:language).permit(:title, :description, :link)
  end

end