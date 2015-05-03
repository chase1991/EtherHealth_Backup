require 'rails_helper'

RSpec.describe "filters/edit", type: :view do
  before(:each) do
    @filter = assign(:filter, Filter.create!(
      :ftype => "MyString",
      :subtype => "MyString"
    ))
  end

  it "renders the edit filter form" do
    render

    assert_select "form[action=?][method=?]", filter_path(@filter), "post" do

      assert_select "input#filter_ftype[name=?]", "filter[ftype]"

      assert_select "input#filter_subtype[name=?]", "filter[subtype]"
    end
  end
end
