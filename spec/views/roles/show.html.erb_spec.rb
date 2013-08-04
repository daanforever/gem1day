require 'spec_helper'

describe "roles/show" do
  before(:each) do
    @role = assign(:role, stub_model(Role,
      :ability => "Ability",
      :resource => "Resource",
      :condition => "Condition"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ability/)
    rendered.should match(/Resource/)
    rendered.should match(/Condition/)
  end
end
