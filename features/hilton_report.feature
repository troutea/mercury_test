Feature: Customer Facing Portal for Hilton

    As an Customer
    I want to be able to view Hilton Reports 

    Background:
        Given I am on the customer facing portal for Hilton Report
        When I have a confirmed account for Hilton Report
        Then I should be on the login page for Hilton Report
        Then I should see text DREWS in the cfp for Hilton Reporting
    @workn
    Scenario: Hilton reports setup
        When I follow DREWS for hilton reports  
        When I follow Edit Details on site DREWS 
        When I select Hilton in the Reporting Group dropdown 
        Then I should see Reports link

    
    @wip
    Scenario: Access the Hilton Reports link
       When I follow DREWS to access reports link 
       When I am on the customer site page
       And I click the Reports Link
       Then I should be on the Hilton Reports page 
