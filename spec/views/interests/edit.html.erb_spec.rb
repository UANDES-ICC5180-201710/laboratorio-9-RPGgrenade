require 'rails_helper'

RSpec.describe "interests/edit", type: :view do
  before(:each) do
    @interest = assign(:interest, Interest.create!(
      :person_id => 1,
      :course_id => 1
    ))
  end

  it "renders the edit interest form" do
    render

    assert_select "form[action=?][method=?]", interest_path(@interest), "post" do

      assert_select "input#interest_person_id[name=?]", "interest[person_id]"

      assert_select "input#interest_course_id[name=?]", "interest[course_id]"
    end
  end
end
