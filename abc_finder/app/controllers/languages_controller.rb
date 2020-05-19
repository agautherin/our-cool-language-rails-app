class LanguagesController < ApplicationController
  
  before_action :find_instance, only: [:show, :edit, :update]
  def index
    @languages = Language.all
  end

  def show
  end

  def new
    @language = Language.new
  end

  def create

    language = Language.create(language_params(:name))
    redirect_to language_path(language)
  end

  def edit
  end

  def update
    @language.update(language_params(:name))
    redirect_to language_path(@language)
  end

  private

  def find_instance
    @language = Language.find(params[:id])
  end

  def language_params(*args)
    params.require(:language).permit(*args)
  end
end
