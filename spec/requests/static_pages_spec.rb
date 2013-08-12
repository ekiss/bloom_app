require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Bloom'" do
      visit '/static_pages/home'
      expect(page).to have_content('Bloom')
    end

     it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Bloom | Home")
    end
  end

  describe "About Us page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

     it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Bloom | About Us")
    end
  end

  describe "Contact Us page" do

    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end

     it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Bloom | Contact Us")
    end
  end
end