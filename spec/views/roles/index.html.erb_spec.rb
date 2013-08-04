require 'spec_helper'

describe "roles/index" do
  before(:each) do
    assign(:roles, [
      stub_model(Role,
        :ability => "Ability",
        :resource => "Resource",
        :condition => "Condition"
      ),
      stub_model(Role,
        :ability => "Ability",
        :resource => "Resource",
        :condition => "Condition"
      )
    ])
  end

  it "renders a list of roles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ability".to_s, :count => 2
    assert_select "tr>td", :text => "Resource".to_s, :count => 2
    assert_select "tr>td", :text => "Condition".to_s, :count => 2
  end
end
