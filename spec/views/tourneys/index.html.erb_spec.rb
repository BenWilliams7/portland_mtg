require 'rails_helper'

RSpec.describe "tourneys/index", type: :view do
  before(:each) do
    assign(:tourneys, [
      Tourney.create!(
        :name => "Name"
      ),
      Tourney.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of tourneys" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
