class GamesController < ApplicationController
  def new
  	@game = Game.build
  end

  def create
  	Game.new(params[:game]).save();
  end
end