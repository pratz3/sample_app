require 'spec_helper'

describe "StaticPages" do
  
  describe "Home Page" do
    
    it "should have Sample App" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end
end
