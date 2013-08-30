require 'spec_helper'

describe UsersController do

    describe "GET 'show'" do
        before(:each) do
            @user = Factory(:user)
        end
		
		it "devrait afficher les micro-messages de l'utilisateur" do
			mp1 = Factory(:micropost, :user => @user, :content => "Foo bar")
			mp2 = Factory(:micropost, :user => @user, :content => "Baz quux")
			get :show, :id => @user
			response.should have_selector("span.content", :content => mp1.content)
			response.should have_selector("span.content", :content => mp2.content)
		end
    end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

end
