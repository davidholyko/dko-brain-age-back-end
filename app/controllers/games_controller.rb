# frozen_string_literal: true

class GamesController < OpenReadController
  before_action :set_game, only: %i[show update destroy]
  skip_before_action :authenticate, only: %i[highscores]

  # GET /games
  def index
    @games = Game.all

    render json: @games
  end

  # GET /games/highscores
  def highscores
    @games = Game.order(score: :desc).limit(10)

    render json: @games
  end

  # GET /games/:id
  def show
    render json: @game
  end

  # POST /games
  def create
    @game = current_user.games.new(game_params)

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_game
    @game = current_user.games.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def game_params
    params.require(:game).permit(:score)
  end
end
