require 'spec_helper'

describe "category_bundles/new.html.erb" do
  before(:each) do
    assign(:category_bundle, stub_model(CategoryBundle,
      :cat_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new category_bundle form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => category_bundles_path, :method => "post" do
      assert_select "input#category_bundle_cat_id", :name => "category_bundle[cat_id]"
      assert_select "input#category_bundle_user_id", :name => "category_bundle[user_id]"
    end
  end
end
