class LanguagesController < ApplicationController
  before_action :language

  def index
  end

  def show
  end

  def new
  end

    private
    def language_params
      params.require(:language).permit(:string, :attachment)
    end

    def language
      @language = current_user.language
    end
end
