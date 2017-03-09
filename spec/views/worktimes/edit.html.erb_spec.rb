require 'rails_helper'

RSpec.describe "worktimes/edit", type: :view do
  before(:each) do
    @worktime = assign(:worktime, Worktime.create!(
      :user => 1,
      :project => 1,
      :breaktimes => 1
    ))
  end

  it "renders the edit worktime form" do
    render

    assert_select "form[action=?][method=?]", worktime_path(@worktime), "post" do

      assert_select "input#worktime_user[name=?]", "worktime[user]"

      assert_select "input#worktime_project[name=?]", "worktime[project]"

      assert_select "input#worktime_breaktimes[name=?]", "worktime[breaktimes]"
    end
  end
end
