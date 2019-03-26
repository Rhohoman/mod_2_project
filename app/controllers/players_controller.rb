class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    find_player
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    redirect_to @player
  end

  def edit
    find_player
  end

  def update
    find_player
    @player.update(player_params)
    redirect_to @player
  end

  def destroy
    find_player
    @player.destroy
    redirect_to players_path
  end

  private

  def find_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :position, :age, :team_id)
  end

end