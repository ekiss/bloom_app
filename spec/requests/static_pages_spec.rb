require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Bloom'" do
      visit '/static_pages/home'
      expect(page).to have_content('Bloom')
    end
  end

  describe "About page" do

    it "should have the content 'Help'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end
end