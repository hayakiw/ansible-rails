require 'rails_helper'

RSpec.describe "worktimes/index", type: :view do
  before(:each) do
    assign(:worktimes, [
      Worktime.create!(
        :user => 2,
        :project => 3,
        :breaktimes => 4
      ),
      Worktime.create!(
        :user => 2,
        :project => 3,
        :breaktimes => 4
      )
    ])
  end

  it "renders a list of worktimes" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
