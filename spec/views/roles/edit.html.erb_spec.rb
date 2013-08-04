require 'spec_helper'

describe "roles/edit" do
  before(:each) do
    @role = assign(:role, stub_model(Role,
      :ability => "MyString",
      :resource => "MyString",
      :condition => "MyString"
    ))
  end

  it "renders the edit role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", role_path(@role), "post" do
      assert_select "input#role_ability[name=?]", "role[ability]"
      assert_select "input#role_resource[name=?]", "role[resource]"
      assert_select "input#role_condition[name=?]", "role[condition]"
    end
  end
end
