require 'rails_helper'

feature 'Static Pages' do

  describe 'Home page' do
    it 'should have_title("Ruby on Rails Tutorial Sample App | Home")' do
      visit '/'
      expect(page).to have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  

    it "should have the h1 'Sample App'" do
      visit '/'
      expect(page).to have_selector('h1', :text => 'Sample App')
    end
  end

  describe "Help page" do
    it "should have content 'Help'" do 
      visit '/static_pages/help' 
      expect(page).to have_content 'Help'
    end 

    it 'should have_title("Ruby on Rails Tutorial Sample App | Help")' do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe 'About page' do
    it "should have content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content 'About'
    end

    it 'should have_title("Ruby on Rails Tutorial Sample App | About")' do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
  end

end
