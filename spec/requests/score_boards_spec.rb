require 'rails_helper'

RSpec.describe "ScoreBoards", type: :request do
  describe "GET /score_boards" do
    it "works! (now write some real specs)" do
      get score_boards_path
      expect(response).to have_http_status(200)
    end
  end
end
