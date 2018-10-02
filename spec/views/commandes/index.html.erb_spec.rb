require 'rails_helper'

RSpec.describe "commandes/index", type: :view do
  before(:each) do
    assign(:commandes, [
      Commande.create!(),
      Commande.create!()
    ])
  end

  it "renders a list of commandes" do
    render
  end
end
