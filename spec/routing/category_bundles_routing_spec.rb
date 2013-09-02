require "spec_helper"

describe CategoryBundlesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/category_bundles" }.should route_to(:controller => "category_bundles", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/category_bundles/new" }.should route_to(:controller => "category_bundles", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/category_bundles/1" }.should route_to(:controller => "category_bundles", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/category_bundles/1/edit" }.should route_to(:controller => "category_bundles", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/category_bundles" }.should route_to(:controller => "category_bundles", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/category_bundles/1" }.should route_to(:controller => "category_bundles", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/category_bundles/1" }.should route_to(:controller => "category_bundles", :action => "destroy", :id => "1")
    end

  end
end
