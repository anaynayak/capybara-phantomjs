require 'spec_helper'

describe "google", :type => :feature do
  it "google" do
    visit '/'
    within("#search_form_homepage") do
      fill_in 'search_form_input_homepage', :with => 'capybara'
    end
    click_button 'search_button_homepage'
    expect(page).to have_content 'rodent'
  end
end
