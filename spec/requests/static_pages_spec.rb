require 'spec_helper'

describe "Static Pages" do
  let(:base_title) {"SampleApp"}
  describe "Home page" do

    it "It should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it 'should have base title' do
    	visit '/static_pages/home'
    	expect(page).to have_title(base_title)
    end

    it 'should not have custom title' do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
    end

  end

  describe "Help page" do

  	it "should have the content 'Help' " do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end


    it 'should have right title' do
    	visit '/static_pages/help'
    	expect(page).to have_title("#{base_title} | Help")
    end

  end

  describe "About Page" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

    it 'should have right title' do
    	visit '/static_pages/about'
    	expect(page).to have_title("#{base_title} | About Us")
    end

  end

  describe "Contact Page" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact')
  	end

    it 'should have right title' do
    	visit '/static_pages/contact'
    	expect(page).to have_title("#{base_title} | Contact")
    end

  end

end
