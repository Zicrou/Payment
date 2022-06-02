require 'rails_helper'

RSpec.describe "apps/new", type: :view do
  before(:each) do
    assign(:app, App.new(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders new app form" do
    render

    assert_select "form[action=?][method=?]", apps_path, "post" do

      assert_select "input[name=?]", "app[name]"

      assert_select "textarea[name=?]", "app[description]"
    end
  end
end
