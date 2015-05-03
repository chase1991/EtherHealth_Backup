require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :description => "Description",
      :age => "Age",
      :gender => "Gender",
      :race => "Race",
      :smoking_status => "Smoking Status",
      :immunocompromised => "Immunocompromised",
      :renal_impairment => "Renal Impairment",
      :pregnancy => "Pregnancy",
      :tag => "Tag"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Age/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Race/)
    expect(rendered).to match(/Smoking Status/)
    expect(rendered).to match(/Immunocompromised/)
    expect(rendered).to match(/Renal Impairment/)
    expect(rendered).to match(/Pregnancy/)
    expect(rendered).to match(/Tag/)
  end
end
