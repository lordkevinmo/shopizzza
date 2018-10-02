require 'rails_helper'

RSpec.describe "commandes/new", type: :view do
  before(:each) do
    assign(:commande, Commande.new())
  end

  it "renders new commande form" do
    render

    assert_select "form[action=?][method=?]", commandes_path, "post" do
    end
  end
end
