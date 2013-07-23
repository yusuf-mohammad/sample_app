require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_selector('h1', text: 'Sample App')  }
    it { should have_selector('title', text: full_title('') ) }
    it { should_not have selector('title', text: '| Home')  }
  end

  describe "Help page" do
    before { visit help_path }
  	it {	should have_content('Help') }
  	it {	should have_selector('title', text: full_title('')) }
  end

  describe "About page" do
    before { visit about_path }
  	it { should have_content('About') }
  	it { should have_selector('title', text: full_title('')) }
  end
end
