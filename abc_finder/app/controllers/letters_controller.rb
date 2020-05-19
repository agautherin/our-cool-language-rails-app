class LettersController < ApplicationController
  
  before_action :find_letter, only: [:show, :edit, :update]
  before_action :find_language_id, only: [:show]

  def index
    @letters = Letter.all.order(character_code: :asc)
  end

  def show
  end

  def new
    @letter = Letter.new
  end

  def create
    params[:letter][:character_code] = params[:letter][:character_code].ord
    @letter = Letter.create(letter_params(:character_code, :alphabet_type))
    LanguageLetter.create(language_id: params[:letter][:languages][:language_id], letter_id: @letter.id)
    redirect_to letter_path(@letter)
  end

  def edit
    @letter.character_code = @letter.character_code.chr
  end

  def update
    @letter.update(letter_params(:alphabet_type))
    redirect_to letter_path(@letter)
  end

  def addlang
    LanguageLetters.find_or_create_by(language_id: [:language][:language_id], letter_id: params[:id])
    redirect_to letters_path
  end

  private
  def find_letter
    @letter = Letter.find(params[:id])
  end

  def letter_params(*args)
    params.require(:letter).permit(*args)
  end

  def find_language_id
    @languages = Language.all
  end


end
