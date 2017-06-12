require 'rails_helper'

RSpec.describe "interests/new", type: :view do
  before(:each) do
    assign(:interest, Interest.new(
      :person_id => 1,
      :course_id => 1
    ))
  end

  it "renders new interest form" do
    render

    assert_select "form[action=?][method=?]", interests_path, "post" do

      assert_select "input#interest_person_id[name=?]", "interest[person_id]"

      assert_select "input#interest_course_id[name=?]", "interest[course_id]"
    end
  end
end
