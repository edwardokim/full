require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample app'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      pages.should have_content('Sample App')

       it "should have the right title"
  visit '/static_pages/home'
  pages.should have_selector( 'title', :text => "Ruby on rails tutorial Sample App | Home ")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/Help'
      pages.should have_content('Help')

       it "should have the right title"
  visit '/static_pages/help'
  pages.should have_selector( 'title', :text => "Ruby on rails tutorial Sample App | Help ")
    end
  end

  describe "About page" do
    it "should have the content 'About us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      pages.should have_content('about us')
    
       it "should have the right title"
  visit '/static_pages/about'
  pages.should have_selector( 'title', :text => "Ruby on rails tutorial Sample App | about us")
    end
  end
 end

