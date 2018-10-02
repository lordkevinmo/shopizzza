require 'rails_helper'

RSpec.describe "commandes/show", type: :view do
  before(:each) do
    @commande = assign(:commande, Commande.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
