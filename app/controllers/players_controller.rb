class PlayersController < ApplicationController
  def new
  	@player = Player.build
  end

  def create
  	Player.new(params[:player]).save();
  end

  def show
  end
end