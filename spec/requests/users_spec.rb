require 'spec_helper'

describe "Users" do
  before(:each) do
    @user = create(:user)
    ap User.all
  end

  describe "GET /users" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get users_path
      response.status.should be(200)
    end
  end
end
