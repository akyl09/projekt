require 'spec_helper'

describe "roles/new.html.erb" do
  before(:each) do
    assign(:role, stub_model(Role,
      :role => "MyString",
      :id => 1
    ).as_new_record)
  end

  it "renders new role form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => roles_path, :method => "post" do
      assert_select "input#role_role", :name => "role[role]"
      assert_select "input#role_id", :name => "role[id]"
    end
  end
end
