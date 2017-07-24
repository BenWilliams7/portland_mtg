require 'rails_helper'

RSpec.describe "tourneys/new", type: :view do
  before(:each) do
    assign(:tourney, Tourney.new(
      :name => "MyString"
    ))
  end

  it "renders new tourney form" do
    render

    assert_select "form[action=?][method=?]", tourneys_path, "post" do

      assert_select "input[name=?]", "tourney[name]"
    end
  end
end
