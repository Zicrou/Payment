require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        amount: 2
      ),
      Payment.create!(
        amount: 2
      )
    ])
  end

  it "renders a list of payments" do
    render  
    expect(rendered).to match (/2/)
    #assert_select "p", text: 2.to_s, count: 2
    
  end
end
