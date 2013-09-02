require 'spec_helper'

describe CategoryBundlesController do

  def mock_category_bundle(stubs={})
    @mock_category_bundle ||= mock_model(CategoryBundle, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all category_bundles as @category_bundles" do
      CategoryBundle.stub(:all) { [mock_category_bundle] }
      get :index
      assigns(:category_bundles).should eq([mock_category_bundle])
    end
  end

  describe "GET show" do
    it "assigns the requested category_bundle as @category_bundle" do
      CategoryBundle.stub(:find).with("37") { mock_category_bundle }
      get :show, :id => "37"
      assigns(:category_bundle).should be(mock_category_bundle)
    end
  end

  describe "GET new" do
    it "assigns a new category_bundle as @category_bundle" do
      CategoryBundle.stub(:new) { mock_category_bundle }
      get :new
      assigns(:category_bundle).should be(mock_category_bundle)
    end
  end

  describe "GET edit" do
    it "assigns the requested category_bundle as @category_bundle" do
      CategoryBundle.stub(:find).with("37") { mock_category_bundle }
      get :edit, :id => "37"
      assigns(:category_bundle).should be(mock_category_bundle)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created category_bundle as @category_bundle" do
        CategoryBundle.stub(:new).with({'these' => 'params'}) { mock_category_bundle(:save => true) }
        post :create, :category_bundle => {'these' => 'params'}
        assigns(:category_bundle).should be(mock_category_bundle)
      end

      it "redirects to the created category_bundle" do
        CategoryBundle.stub(:new) { mock_category_bundle(:save => true) }
        post :create, :category_bundle => {}
        response.should redirect_to(category_bundle_url(mock_category_bundle))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved category_bundle as @category_bundle" do
        CategoryBundle.stub(:new).with({'these' => 'params'}) { mock_category_bundle(:save => false) }
        post :create, :category_bundle => {'these' => 'params'}
        assigns(:category_bundle).should be(mock_category_bundle)
      end

      it "re-renders the 'new' template" do
        CategoryBundle.stub(:new) { mock_category_bundle(:save => false) }
        post :create, :category_bundle => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested category_bundle" do
        CategoryBundle.should_receive(:find).with("37") { mock_category_bundle }
        mock_category_bundle.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :category_bundle => {'these' => 'params'}
      end

      it "assigns the requested category_bundle as @category_bundle" do
        CategoryBundle.stub(:find) { mock_category_bundle(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:category_bundle).should be(mock_category_bundle)
      end

      it "redirects to the category_bundle" do
        CategoryBundle.stub(:find) { mock_category_bundle(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(category_bundle_url(mock_category_bundle))
      end
    end

    describe "with invalid params" do
      it "assigns the category_bundle as @category_bundle" do
        CategoryBundle.stub(:find) { mock_category_bundle(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:category_bundle).should be(mock_category_bundle)
      end

      it "re-renders the 'edit' template" do
        CategoryBundle.stub(:find) { mock_category_bundle(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested category_bundle" do
      CategoryBundle.should_receive(:find).with("37") { mock_category_bundle }
      mock_category_bundle.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the category_bundles list" do
      CategoryBundle.stub(:find) { mock_category_bundle }
      delete :destroy, :id => "1"
      response.should redirect_to(category_bundles_url)
    end
  end

end
