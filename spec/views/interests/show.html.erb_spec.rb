require 'rails_helper'

RSpec.describe "interests/show", type: :view do
  before(:each) do
    @interest = assign(:interest, Interest.create!(
      :person_id => 2,
      :course_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
