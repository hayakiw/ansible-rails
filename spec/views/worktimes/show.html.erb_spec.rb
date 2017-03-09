require 'rails_helper'

RSpec.describe "worktimes/show", type: :view do
  before(:each) do
    @worktime = assign(:worktime, Worktime.create!(
      :user => 2,
      :project => 3,
      :breaktimes => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
