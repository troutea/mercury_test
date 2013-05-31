Capybara.default_wait_time = 10
Given /^I am on the customer facing portal\.$/ do
  visit "https://cmt-qa.mercury.ibahn.com" # express the regexp above with the code you wish you had
end

When /^I have a confirmed account$/ do
   #visit('/home')
   fill_in("user_username", :with => "stirlingtest")
   fill_in("user_password", :with => "Pr0p3rty")
   click_button('Sign In')
end
Then /^I should be on the login page$/ do
   page.should have_content('Please')
end
Given(/^I am on the cfp home page$/) do
   visit "https://cmt-qa.mercury.ibahn.com/properties"
   fill_in("user_username", :with => "stirlingtest")
   fill_in("user_password", :with => "Pr0p3rty")
   click_button('Sign In')
  # ask('you are here') 
end

Then /^I should see text DREWS in the page/ do
    page.should have_content('DREWS')
end
When(/^I follow DREWS for personal code$/) do
#When (/^I follow for DREWS for personal code$/) do   
  click_link("DREWS") 
end
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
##################################################

##################################################
Given(/^I am on the cfp home page for shared code$/) do
   visit "https://cmt-qa.mercury.ibahn.com/properties"
   fill_in("user_username", :with => "stirlingtest")
   fill_in("user_password", :with => "Pr0p3rty")
   click_button('Sign In')
  # ask('you are here')
end

Then(/^I should see text shared code$/) do
    page.should have_content('DREWS')
end

When /^I follow "([^"]*)"$/ do |link|
  click_link("DREWS")
  click_link("Connect Codes")
  click_link("Shared")
#  ask("where are we now")
end
Given /^I select "(.*?)"$/ do |link|
  #print page.html
  click_link("New Shared Connect Code")
 # ask("here")
end
When /^I fill in the connect code details shared codes$/ do
  fill_in( "Code", :with => "SHA4ED")
  @valid_time = Time.now
  @valid_until = Time.now
  fill_in("Valid From", :with =>@valid_time)
  find_button("Done").click
  fill_in("Valid Until", :with =>@valid_until+3600)
  find_button("Done").click
 # ask('we are here')
  find_button("Save").click
end

Then /^I should see successful shared codes$/ do
  page.should have_content('successfully')
end
