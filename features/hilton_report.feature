Feature: Customer Facing Portal

    As an Customer
    I want to be able to create connect codes and shared codes
    Tcode and shared codes work on the Customer Facing Portal

    Background:
        Given I am on the customer facing portal.
        When I have a confirmed account
        Then I should be on the login page
    @workn
    Scenario: Create a Personal code bundle 
        Then I should see text DREWS in the cfp
        When I follow DREWS for personal code 
        When I follow Connect Code 
        When I follow Personal Code Bundles
        Given I select NEW PERSONAL CODE BUNDLE 
        When I fill in the connect code details
        Then I should see successful

    

