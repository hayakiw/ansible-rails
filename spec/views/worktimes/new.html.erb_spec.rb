require 'rails_helper'

RSpec.describe "worktimes/new", type: :view do
  before(:each) do
    assign(:worktime, Worktime.new(
      :user => 1,
      :project => 1,
      :breaktimes => 1
    ))
  end

  it "renders new worktime form" do
    render

    assert_select "form[action=?][method=?]", worktimes_path, "post" do

      assert_select "input#worktime_user[name=?]", "worktime[user]"

      assert_select "input#worktime_project[name=?]", "worktime[project]"

      assert_select "input#worktime_breaktimes[name=?]", "worktime[breaktimes]"
    end
  end
end
