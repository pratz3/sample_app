require 'spec_helper'

describe "User Pages" do
  subject { page }
  
  describe "signup" do
    before { visit signup_path }
    
    let(:submit) { "Create my account" }
    
    describe "invalid information" do
      it "should not create a user" do
        expect {click_button submit}.not_to change(User, :count)
      end
    end
    
    describe "valid information" do
      before do
        fill_in "Name",             :with => "Example User"
        fill_in "Email",            :with => "user@example.com"
        fill_in "Password",         :with => "foobar"
        fill_in "Confirmation",     :with => "foobar"
      end
      it "should create a new user" do
        expect {click_button submit}.to change(User, :count).by(1)
      end
    end
  end 
end
