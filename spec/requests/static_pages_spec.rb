require 'spec_helper'

describe "Static pages" do

  subject { page }
  let(:base_title) { "Bloom" }

  it "should have the right links on the layout" do
    visit root_path
    click_link "About Us"
    expect(page).to have_title(full_title('About Us'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact Us'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "bloom"
    expect(page).to have_title(full_title(''))
  end

  describe "Home page" do

  	before { visit root_path }

    it { should have_content(base_title) }

    it { should have_title(full_title(''))}

    it { should_not have_title('| Home')}
  end

  describe "About Us page" do

  	before { visit about_path }

    it { should have_selector('h1',"About Us")}

    it { should have_title(full_title("About Us"))}
  end

  describe "Contact Us page" do

  	before { visit contact_path }

    it { should have_selector('h1',"Contact Us")}

    it { should have_title(full_title("Contact Us"))}
  end
end