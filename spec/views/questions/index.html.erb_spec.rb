require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :description => "Description",
        :age => "Age",
        :gender => "Gender",
        :race => "Race",
        :smoking_status => "Smoking Status",
        :immunocompromised => "Immunocompromised",
        :renal_impairment => "Renal Impairment",
        :pregnancy => "Pregnancy",
        :tag => "Tag"
      ),
      Question.create!(
        :description => "Description",
        :age => "Age",
        :gender => "Gender",
        :race => "Race",
        :smoking_status => "Smoking Status",
        :immunocompromised => "Immunocompromised",
        :renal_impairment => "Renal Impairment",
        :pregnancy => "Pregnancy",
        :tag => "Tag"
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Age".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Race".to_s, :count => 2
    assert_select "tr>td", :text => "Smoking Status".to_s, :count => 2
    assert_select "tr>td", :text => "Immunocompromised".to_s, :count => 2
    assert_select "tr>td", :text => "Renal Impairment".to_s, :count => 2
    assert_select "tr>td", :text => "Pregnancy".to_s, :count => 2
    assert_select "tr>td", :text => "Tag".to_s, :count => 2
  end
end
