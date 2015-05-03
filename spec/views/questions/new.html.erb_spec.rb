require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :description => "MyString",
      :age => "MyString",
      :gender => "MyString",
      :race => "MyString",
      :smoking_status => "MyString",
      :immunocompromised => "MyString",
      :renal_impairment => "MyString",
      :pregnancy => "MyString",
      :tag => "MyString"
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input#question_description[name=?]", "question[description]"

      assert_select "input#question_age[name=?]", "question[age]"

      assert_select "input#question_gender[name=?]", "question[gender]"

      assert_select "input#question_race[name=?]", "question[race]"

      assert_select "input#question_smoking_status[name=?]", "question[smoking_status]"

      assert_select "input#question_immunocompromised[name=?]", "question[immunocompromised]"

      assert_select "input#question_renal_impairment[name=?]", "question[renal_impairment]"

      assert_select "input#question_pregnancy[name=?]", "question[pregnancy]"

      assert_select "input#question_tag[name=?]", "question[tag]"
    end
  end
end
