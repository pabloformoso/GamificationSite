class AuthenticationController < ApplicationController
  def logIn
  end

  def logUser
  	@player = JSON.parse Player.post(:login, {},params[:player].to_json).body
  	logger.debug @player["username"]
  	redirect_to player_url(@player, :id => @player["username"])
  end
end