require 'spec_helper'

describe "admin/users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_user_path(@user), "post" do
    end
  end
end
