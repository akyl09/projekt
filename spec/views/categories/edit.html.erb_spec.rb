require 'spec_helper'

describe "categories/edit.html.erb" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :new_record? => false,
      :cat_name => "MyString",
      :cat_id => 1
    ))
  end

  it "renders the edit category form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => category_path(@category), :method => "post" do
      assert_select "input#category_cat_name", :name => "category[cat_name]"
      assert_select "input#category_cat_id", :name => "category[cat_id]"
    end
  end
end
