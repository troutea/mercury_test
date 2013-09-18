Feature: Customer Facing Portal

    As an Customer
    I want to be able to create connect options  

    Background:
        Given I am on the customer facing portal for connect option
        When I have a confirmed account for a connect option
        Then I should be on the login page for connect option
        Then I should see text DREWS in the cfp for the connect option 
    @wip
    Scenario: Create a free to guest connection option 
        When I follow DREWS for ftg connect option 
        #When I follow Connect option for ftg
       # Then I should be on the connect option page 

    

