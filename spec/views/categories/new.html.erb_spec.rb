require 'spec_helper'

describe "categories/new.html.erb" do
  before(:each) do
    assign(:category, stub_model(Category,
      :cat_name => "MyString",
      :cat_id => 1
    ).as_new_record)
  end

  it "renders new category form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => categories_path, :method => "post" do
      assert_select "input#category_cat_name", :name => "category[cat_name]"
      assert_select "input#category_cat_id", :name => "category[cat_id]"
    end
  end
end
