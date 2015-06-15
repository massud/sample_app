require 'rails_helper'

feature 'Static Pages' do

  describe 'Home page' do

    before { visit root_path }

    it 'should have_title("Ruby on Rails Tutorial Sample App | Home")' do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
  

    it "should have the h1 'Sample App'" do
      expect(page).to have_selector('h1', :text => 'Sample App')
    end
  end

  describe "Help page" do

    before { visit help_path }

    it "should have content 'Help'" do 
      expect(page).to have_content 'Help'
    end 

    it 'should have_title("Ruby on Rails Tutorial Sample App | Help")' do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe 'About page' do

    before { visit about_path }

    it "should have content 'About'" do
      expect(page).to have_content 'About'
    end

    it 'should have_title("Ruby on Rails Tutorial Sample App | About")' do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
  end

  describe 'Contact page' do

    before { visit contact_path }


    it "should have content 'Contact'" do
      expect(page).to have_content 'Contact'
    end

    it 'should have_title("Ruby on Rails Tutorial Sample App | Contact")' do
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

   describe 'Sign up page' do

    before { visit signup_path }


    it "should have content 'This will be a signup page for new users'" do
      expect(page).to have_content 'This will be a signup page for new users'
    end

    it 'should have_title("Sign up")' do
      expect(page).to have_title("Sign up")
    end
  end

end
