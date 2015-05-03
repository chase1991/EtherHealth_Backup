require 'rails_helper'

RSpec.describe "filters/show", type: :view do
  before(:each) do
    @filter = assign(:filter, Filter.create!(
      :ftype => "Ftype",
      :subtype => "Subtype"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ftype/)
    expect(rendered).to match(/Subtype/)
  end
end
