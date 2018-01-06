class StaticController < ApplicationController

  def new
    @word = Word.new
  end

  def show
    render params[:page]
  end
end
