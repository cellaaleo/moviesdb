class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @directors = Director.find(params[:id])
  end
end
