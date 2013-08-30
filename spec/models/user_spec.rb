require 'spec_helper'

describe User do


  describe "micropost associations" do

    before(:each) do
      @user = User.create(@attr)
      @mp1 = Factory(:micropost, :user => @user, :created_at => 1.day.ago)
      @mp2 = Factory(:micropost, :user => @user, :created_at => 1.hour.ago)
    end

    it "devrait avoir un attribut `microposts`" do
      @user.should respond_to(:microposts)
    end

    it "devrait avoir les bons micro-messags dans le bon ordre" do
      @user.microposts.should == [@mp2, @mp1]
    end
	
	it "devrait détruire les micro-messages associés" do
      @user.destroy
      [@mp1, @mp2].each do |micropost|
        Micropost.find_by_id(micropost.id).should be_nil
      end
    end
  end
  
  describe "validations" do

    it "requiert un identifiant d'utilisateur" do
      Micropost.new(@attr).should_not be_valid
    end

    it "requiert un contenu non vide" do
      @user.microposts.build(:content => "  ").should_not be_valid
    end

    it "derait rejeter un contenu trop long" do
      @user.microposts.build(:content => "a" * 141).should_not be_valid
    end
  end
  
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
    
end
