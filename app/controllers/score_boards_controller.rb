class ScoreBoardsController < ApplicationController
  before_action :set_score_board, only: [:show, :update, :destroy]

  # GET /score_boards
  def index
    @score_boards = ScoreBoard.all

    render json: @score_boards
  end

  # GET /score_boards/1
  def show
    render json: @score_board
  end

  # POST /score_boards
  def create
    @score_board = ScoreBoard.new(score_board_params)

    if @score_board.save
      render json: @score_board, status: :created, location: @score_board
    else
      render json: @score_board.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /score_boards/1
  def update
    if @score_board.update(score_board_params)
      render json: @score_board
    else
      render json: @score_board.errors, status: :unprocessable_entity
    end
  end

  # DELETE /score_boards/1
  def destroy
    @score_board.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score_board
      @score_board = ScoreBoard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def score_board_params
      params.fetch(:score_board, {})
    end
end
