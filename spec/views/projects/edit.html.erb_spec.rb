require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :customer => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_customer[name=?]", "project[customer]"

      assert_select "input#project_name[name=?]", "project[name]"
    end
  end
end
