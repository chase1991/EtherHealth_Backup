require 'rails_helper'

RSpec.describe "filters/new", type: :view do
  before(:each) do
    assign(:filter, Filter.new(
      :ftype => "MyString",
      :subtype => "MyString"
    ))
  end

  it "renders new filter form" do
    render

    assert_select "form[action=?][method=?]", filters_path, "post" do

      assert_select "input#filter_ftype[name=?]", "filter[ftype]"

      assert_select "input#filter_subtype[name=?]", "filter[subtype]"
    end
  end
end
