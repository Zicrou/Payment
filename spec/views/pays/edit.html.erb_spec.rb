require 'rails_helper'

RSpec.describe "pays/edit", type: :view do
  before(:each) do
    @pay = assign(:pay, Pay.create!(
      amount: 1
    ))
  end

  it "renders the edit pay form" do
    render

    assert_select "form[action=?][method=?]", pay_path(@pay), "post" do

      assert_select "input[name=?]", "pay[amount]"
    end
  end
end
