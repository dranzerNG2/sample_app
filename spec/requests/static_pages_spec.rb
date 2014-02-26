require 'spec_helper'

describe "Static pages" do
  describe "Home Page" do
    it "should have the h1 'Sample App'" do
    	visit '/static_pages/home'
    	page.should have_selector('h1', 
    		:text => 'Sample App')
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers 
    end
    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text => 
    		"Ruby on Rails Tutorial Sample App | Home")
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    end
  end

  describe "Help Page" do
  	it "should have the h1 'Help'" do
  		visit '/static_pages/help'
 		page.should have_selector('h1',:text => 'Help') 
  	end
  	it "should have the title 'Help'" do
    	visit '/static_pages/help'
    	page.should have_selector('title', :text => 
    		"Ruby on Rails Tutorial Sample App | Help")
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    end
  end

  describe "About Page" do
    it "should have the h1 'About Us'" do
    	visit '/static_pages/about'
    	page.should have_selector('h1', 
    		:text => 'About Us')
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    end 
    it "should have the title 'About Us'" do
    	visit '/static_pages/about'
    	page.should have_selector('title', :text => 
    		"Ruby on Rails Tutorial Sample App | About Us")
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    end
  end
end

