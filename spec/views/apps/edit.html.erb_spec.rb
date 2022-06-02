require 'rails_helper'

RSpec.describe "apps/edit", type: :view do
  before(:each) do
    @app = assign(:app, App.create!(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders the edit app form" do
    render

    assert_select "form[action=?][method=?]", app_path(@app), "post" do

      assert_select "input[name=?]", "app[name]"

      assert_select "textarea[name=?]", "app[description]"
    end
  end
end
