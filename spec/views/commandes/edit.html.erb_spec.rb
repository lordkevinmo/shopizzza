require 'rails_helper'

RSpec.describe "commandes/edit", type: :view do
  before(:each) do
    @commande = assign(:commande, Commande.create!())
  end

  it "renders the edit commande form" do
    render

    assert_select "form[action=?][method=?]", commande_path(@commande), "post" do
    end
  end
end
