Feature: Customer Facing Portal

    As an Customer
    I want to be able to create connect codes and shared codes
    Tcode and shared codes work on the Customer Facing Portal

    Background:

    Scenario: Successful login
        Given I am on the customer facing portal.
        When I have a confirmed account
        Then I should be on the login page

    Scenario: Create a Personal code bundle 
        Given I am on the cfp home page
        Then I should see text DREWS in the page
        When I follow DREWS for personal code 
        When I follow Connect Code 
        When I follow Personal Code Bundles
        Given I select NEW PERSONAL CODE BUNDLE 
        When I fill in the connect code details
        Then I should see successful


    Scenario: Create a Shared code bundle
        Given I am on the cfp home page for shared code
        Then I should see text shared code 
        When I follow "DREWS"  
        And I follow "Connect Code" 
        And I follow "Shared Codes"
        Given I select "NEW SHARED CONNECT CODE"
        When I fill in the connect code details shared codes
        Then I should see successful shared codes

    Scenario: Delete a Personal code bundle
	Given I am on the cfp home page to delete a personal bundle
	When I follow DREWS to delete the personal code
        When I follow connect code to delete the code
        When I follow Personal code bundle for DREWS
        When I select Delete for PersCodeTest
        Then I should see deleted message

    Scenario: Delete a Shared Bundle code
       Given I am on the cfp home page to delete a shared bundle code
       When I follow DREWS to delete the shared code
       When I follow the shared code to delete the shared code
       When I follow Shared code bundle for DREWS
       When I select Delete for SH4RED
       Then I should see the delete message for shared code bundle
    

