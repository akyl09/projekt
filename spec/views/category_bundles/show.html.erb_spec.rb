require 'spec_helper'

describe "category_bundles/show.html.erb" do
  before(:each) do
    @category_bundle = assign(:category_bundle, stub_model(CategoryBundle,
      :cat_id => 1,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
