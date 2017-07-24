require 'rails_helper'

RSpec.describe "tourneys/edit", type: :view do
  before(:each) do
    @tourney = assign(:tourney, Tourney.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit tourney form" do
    render

    assert_select "form[action=?][method=?]", tourney_path(@tourney), "post" do

      assert_select "input[name=?]", "tourney[name]"
    end
  end
end
