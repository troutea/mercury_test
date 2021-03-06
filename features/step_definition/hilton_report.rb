
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


#Scenario 1
When(/^I follow DREWS for hilton reports$/) do
  click_link("DREWS") 
end
When(/^I follow Edit Details on site DREWS$/) do
  click_link("Edit Details")
end
When(/^I select Hilton in the Reporting Group dropdown$/) do
   select('Hilton', :from => 'warehouse_report_group_id')
   find_button("Save").click
end

Then(/^I should see Reports link$/) do
    page.should have_content('Reports')
end

#######Scenario 2 #####################
When(/^I follow DREWS to access reports link$/) do
  click_link("DREWS")
end

When(/^I am on the customer site page$/) do
    page.should have_content('Reports') 
end

When(/^I click the Reports Link$/) do
  click_link("Reports")
end

Then(/^I should be on the Hilton Reports page$/) do
  page.should have_content('Invoicing') 
end

#Scenario 3
When(/^I follow DREWS to view a report$/) do
   click_link("DREWS")
end

When(/^I click the reports link to view the report$/) do
   click_link("Reports") 
end

When(/^I click on the Invoicing report$/) do
   click_link("Invoicing / Payment Report") 
end
=begin
When(/^I enter the date$/) do
  @valid_time = Time.now
  @valid_until = Time.now
  fill_in("Start Date", :with =>@valid_time)
  find_button("Done").click
  fill_in("End Date", :with =>@valid_until+3600)
  find_button("Done").click
  #ask('we are here')
end
=end
When(/^I click save$/) do
  find_button("Submit").click
end

Then(/^I should see Pending$/) do
   page.should have_content('Pending')
end



##################################################

##################################################






