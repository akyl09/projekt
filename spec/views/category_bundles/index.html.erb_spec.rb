require 'spec_helper'

describe "category_bundles/index.html.erb" do
  before(:each) do
    assign(:category_bundles, [
      stub_model(CategoryBundle,
        :cat_id => 1,
        :user_id => 1
      ),
      stub_model(CategoryBundle,
        :cat_id => 1,
        :user_id => 1
      )
    ])
  end

  it "renders a list of category_bundles" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
