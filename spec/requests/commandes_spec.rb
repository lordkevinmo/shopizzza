require 'rails_helper'

RSpec.describe "Commandes", type: :request do
  describe "GET /commandes" do
    it "works! (now write some real specs)" do
      get commandes_path
      expect(response).to have_http_status(200)
    end
  end
end
