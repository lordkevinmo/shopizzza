require "rails_helper"

RSpec.describe CommandesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/commandes").to route_to("commandes#index")
    end

    it "routes to #new" do
      expect(:get => "/commandes/new").to route_to("commandes#new")
    end

    it "routes to #show" do
      expect(:get => "/commandes/1").to route_to("commandes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/commandes/1/edit").to route_to("commandes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/commandes").to route_to("commandes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/commandes/1").to route_to("commandes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/commandes/1").to route_to("commandes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/commandes/1").to route_to("commandes#destroy", :id => "1")
    end
  end
end
