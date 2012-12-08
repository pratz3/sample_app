require 'spec_helper'


describe "StaticPages" do
  
  describe "Home Page" do
    before { visit root_path }
    
    it "should have h1 Home" do
      page.should have_selector('h1', :text =>'Home')
    end
    
    it "should have the right title" do
      page.should have_selector('title', :text => " Home")
    end
  end
  
  describe "About Page" do
    before { visit about_path }
    
    it "should have h1 About Us" do
      page.should have_selector('h1', :text => "About Us")
    end
    
    it "should have title About Page" do
      page.should have_selector('title', :text => " About Us")
    end
  end
  
  describe "Help Page" do
    before { visit help_path }
    
    it "should have h1 Help" do
      page.should have_selector('h1', :text => "Help")
    end
    
    it "should have title Help" do
      page.should have_selector('title', :text => " Help")
    end
  end  
  describe "Contact Page" do
    before { visit contact_path }
    
    it "should have h1 Contact" do
      page.should have_selector('h1', :text => "Contact")
    end
    
    it "should have title Contact" do
      page.should have_selector('title', :text => " Contact")
    end
  end
end


