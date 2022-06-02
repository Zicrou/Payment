require 'rails_helper'

RSpec.describe "pays/new", type: :view do
  before(:each) do
    assign(:pay, Pay.new(
      amount: 1
    ))
  end

  it "renders new pay form" do
    render

    assert_select "form[action=?][method=?]", pays_path, "post" do

      assert_select "input[name=?]", "pay[amount]"
    end
  end
end
