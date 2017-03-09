require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :customer => 1,
      :name => "MyString"
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_customer[name=?]", "project[customer]"

      assert_select "input#project_name[name=?]", "project[name]"
    end
  end
end
