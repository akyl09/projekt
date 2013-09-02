require 'spec_helper'

describe "roles/edit.html.erb" do
  before(:each) do
    @role = assign(:role, stub_model(Role,
      :new_record? => false,
      :role => "MyString",
      :id => 1
    ))
  end

  it "renders the edit role form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => role_path(@role), :method => "post" do
      assert_select "input#role_role", :name => "role[role]"
      assert_select "input#role_id", :name => "role[id]"
    end
  end
end
