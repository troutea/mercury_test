
Capybara.default_wait_time = 10
Given(/^I am on the customer facing portal for Hilton Report$/) do
  visit "https://cmt-qa.mercury.ibahn.com" # express the regexp above with the code you wish you had
end
When /^I have a confirmed account for Hilton Report$/ do
   fill_in("user_username", :with => "stirlingtest")
   fill_in("user_password", :with => "Pr0p3rty")
   click_button('Sign In')
end
Then /^I should be on the login page for Hilton Report$/ do
   page.should have_content('Please')
end
Then /^I should see text DREWS in the cfp for the Hilton Reporting/ do
     sleep(10)
     visit "/properties"
     page.should have_content('DREWS')
end
When(/^I follow DREWS for hilton reports$/) do
  click_link("DREWS") 
end
=begin
When(/^I follow Connect Code$/) do
  click_link("Connect Codes")
#  click_link("Personal Code Bundles")
end
When(/^I follow Personal Code Bundles$/) do
  click_link("Personal Code Bundles")
end
#Given /^I select "(.*?)"$/ do |link| 
Given(/^I select NEW PERSONAL CODE BUNDLE$/) do
  #print page.html
  click_link("New Personal Code Bundle")
#  ask("where are we now")
end
When /^I fill in the connect code details$/ do
  fill_in( "Bundle Description", :with => "PersCodeTest") 
  fill_in("Number of Codes", :with => "2")
  @valid_time = Time.now
  @valid_until = Time.now
  fill_in("Valid From", :with =>@valid_time)
  find_button("Done").click
  fill_in("Valid Until", :with =>@valid_until+3600)
  find_button("Done").click
  #ask('we are here')
  find_button("Save").click 
end

Then /^I should see successful$/ do
  page.should have_content('successfully') 
end
=end
##################################################

##################################################






