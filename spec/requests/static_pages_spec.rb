require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample app'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      pages.should have_selector('h1', :test => 'Sample App')

       it "should have the right title"
  visit root_path
  pages.should have_selector( 'title', :text => "Ruby on rails tutorial Sample App | Home ")
    end
    it "should not have a custome page title" do
    	visit root_path
    	page.should_not have_selector('title',
    		:text => | 'Home')
    end
    
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit help_path
      pages.should have_content('Help')

       it "should have the right title"
  visit help_path
  pages.should have_selector( 'title', :text => "Ruby on rails tutorial Sample App | Help ")
    end
  end

  describe "About page" do
    it "should have the content 'About us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit about_path
      pages.should have_content('about us')
    
       it "should have the right title"
  visit about_path
  pages.should have_selector( 'title', :text => "Ruby on rails tutorial Sample App | about us")
    end
  end

  describe "contact page" do
    it "should have the h1 'contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'contact')
    end
    it "should have the title 'contact'" do
      visit contact_path
      page.should have_selector('title',
        text: "Ruby on rails tutorial sample app | contact")

    end
  end

 end

