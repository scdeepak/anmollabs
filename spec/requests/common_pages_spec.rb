require 'spec_helper'

describe "CommonPages" do
  subject { page }
  describe "About us" do
    before { visit about_path }
    it { should have_selector('h1', text: 'About us') }
    it { should have_selector('title', content: full_title('About')) }
  end
  describe "Contact us" do
    before { visit contact_path }
    it { should have_selector('h1', text: 'Contact us') }
    it { should have_selector('title', content: full_title('Contact')) }
  end
  describe "FAQ" do
    before { visit faq_path }
    it { should have_selector('h1', text: 'FAQ') }
    it { should have_selector('title', content: full_title('FAQ')) }
  end
  describe "Terms of service" do
    before { visit tos_path }
    it { should have_selector('h1', text: 'Terms of service') }
    it { should have_selector('title', content: full_title('Terms')) }
  end
end
