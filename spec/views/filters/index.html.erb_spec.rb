require 'rails_helper'

RSpec.describe "filters/index", type: :view do
  before(:each) do
    assign(:filters, [
      Filter.create!(
        :ftype => "Ftype",
        :subtype => "Subtype"
      ),
      Filter.create!(
        :ftype => "Ftype",
        :subtype => "Subtype"
      )
    ])
  end

  it "renders a list of filters" do
    render
    assert_select "tr>td", :text => "Ftype".to_s, :count => 2
    assert_select "tr>td", :text => "Subtype".to_s, :count => 2
  end
end
