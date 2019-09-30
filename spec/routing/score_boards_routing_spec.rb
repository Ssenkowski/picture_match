require "rails_helper"

RSpec.describe ScoreBoardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/score_boards").to route_to("score_boards#index")
    end

    it "routes to #show" do
      expect(:get => "/score_boards/1").to route_to("score_boards#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/score_boards").to route_to("score_boards#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/score_boards/1").to route_to("score_boards#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/score_boards/1").to route_to("score_boards#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/score_boards/1").to route_to("score_boards#destroy", :id => "1")
    end
  end
end
