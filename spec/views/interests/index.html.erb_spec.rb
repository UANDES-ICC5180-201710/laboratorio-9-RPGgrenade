require 'rails_helper'

RSpec.describe "interests/index", type: :view do
  before(:each) do
    assign(:interests, [
      Interest.create!(
        :person_id => 2,
        :course_id => 3
      ),
      Interest.create!(
        :person_id => 2,
        :course_id => 3
      )
    ])
  end

  it "renders a list of interests" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
