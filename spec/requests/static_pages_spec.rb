require 'spec_helper'

describe "StaticPages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(page_title) }
  end

  describe "Home page" do
    before { visit root_path }

    let(:heading) { 'Sample App' }
    let(:page_title) { '' }

    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should have_title(" | Home") }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Contact') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should have_title(" | Help") }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should have_title(" | About") }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_title(" | Contact") }
  end

  it "should have right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title('About Us')
    click_link "Help"
    expect(page).to have_title('Help')
    click_link "Contact"
    expect(page).to have_title('Contact')
    click_link "Sign in"
    expect(page).to have_title('Sign in')
    click_link "sample app"
    expect(page).to have_title('Sample App')
  end
end
