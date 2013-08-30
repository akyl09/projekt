require 'spec_helper'

describe Micropost do

  before(:each) do
    @user = Factory(:user)
    @attr = { :content => "Contenu du message" }
  end

  it "devrait créer instance de micro-message avec bons attributs" do
    @user.microposts.create!(@attr)
  end

  describe "associations avec l'utilisateur" do

    before(:each) do
      @micropost = @user.microposts.create(@attr)
    end

    it "devrait avoir un attribut user" do
      @micropost.should respond_to(:user)
    end

    it "devrait avoir le bon utilisateur associé" do
      @micropost.user_id.should == @user.id
      @micropost.user.should == @user
    end
  end
end
