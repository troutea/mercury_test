Feature: Customer Facing Portal Conference

    As an Customer
    I want to be able to create a conference.

    Background:
     
    Scenario: Successful login
	Given I am on the customer facing portal for conference.
        When I have a confirmed account for conference
        Then I should be on the login page for conference


    Scenario: Create a conference
	Given I am on the cfp home page for conference
	When I follow DREWS for conference codes
        When I follow Conferences Manager
        When I follow Conference in the page 
        When I fill in the conference details
        When I click save
        Then A new conference should be created


     Scenario: Schedule a conference
       Given I am on the new conference page
       When I follow DREWS for a conference
       And I follow Conference Manager for conference
       And I follow Active Conferences for conference
       And I follow SYSTEST for conference
       And I follow Daily Timing for conference
       When I add the schedule details
       Then the conference should be scheduled

     Scenario: Schedule a conference for a planner
       Given I am on the new conference page for a planner
       When I follow DREWS for a planner
       And I follow Conference Manager for a planner
       And I follow Active Conferences for a planner
       And I follow SYSTEST for a conference planner
       And I follow Planner Contacts for a conference
       When I add the contacts detail
       Then the planner should be added

     Scenario: Select a room for a conference
       Given I am on the new conference to select a room
       When I follow DREWS to select a room
       And I follow Conference Manager for a room 
       And I follow Active Conferences for a room 
       And I follow SYSTEST for a conference room 
       And I follow Rooms
       When I click on the room 
       Then the room should be selected
        	
     Scenario: Set up Wireless Network
      Given I am on the conference to configure a wireless access point
      When I follow DREWS to setup wireless
      When I follow Conference Manager for wireless
      When I follow Active Conferences for wireless
      When I follow SYSTEST for wireless
      When I click the Wireless Network Settings
      When I click the edit button
      When I enter the Vanity SSID
      Then the ssid should be set

