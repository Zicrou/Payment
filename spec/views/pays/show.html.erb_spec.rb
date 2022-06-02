require 'rails_helper'

RSpec.describe "pays/show", type: :view do
  before(:each) do
    @pay = assign(:pay, Pay.create!(
      amount: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
