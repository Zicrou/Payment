require 'rails_helper'

RSpec.describe "pays/index", type: :view do
  before(:each) do
    assign(:pays, [
      Pay.create!(
        amount: 2
      ),
      Pay.create!(
        amount: 2
      )
    ])
  end

  it "renders a list of pays" do
    render
    #assert_select "tr>td", text: 2.to_s, count: 2
    expect(rendered).to match (/2/)

  end
end
