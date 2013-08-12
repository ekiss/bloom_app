require 'spec_helper'

describe "Static pages" do

  subject { page }
  let(:base_title) { "Bloom" }

  describe "Home page" do

  	before { visit root_path }

    it { should have_content(base_title) }

    it { should have_title(full_title(''))}

    it { should_not have_title('| Home')}
  end

  describe "About Us page" do

  	before { visit about_path }

    it { should have_content("About Us")}

    it { should have_title(full_title("About Us"))}
  end

  describe "Contact Us page" do

  	before { visit contact_path }

    it { should have_content("Contact Us")}

    it { should have_title(full_title("Contact Us"))}
  end
end