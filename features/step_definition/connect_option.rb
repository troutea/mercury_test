
Capybara.default_wait_time = 10
Given(/^I am on the customer facing portal for connect option$/) do
  visit "https://cmt-qa.mercury.ibahn.com" # express the regexp above with the code you wish you had
end
When /^I have a confirmed account for a connect option$/ do
   fill_in("user_username", :with => "stirlingtest")
   fill_in("user_password", :with => "Pr0p3rty")
   click_button('Sign In')
end
Then /^I should be on the login page for connect option$/ do
   page.should have_content('Please')
end
Then /^I should see text DREWS in the cfp for the Hilton Reporting/ do
     sleep(10)
     visit "/properties"
     page.should have_content('DREWS')
end


#Scenario 1
When(/^I follow DREWS for ftg connect option$/) do
  click_link("DREWS") 
end








