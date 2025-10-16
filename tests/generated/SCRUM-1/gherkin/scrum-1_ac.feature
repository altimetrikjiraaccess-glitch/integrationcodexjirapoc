Feature: SCRUM-1 — Add Custom Field and Validation Rule on Account Object

Scenario: Create Customer Type Field on Account Object
Given I am on the Account object setup page  
When I add a new picklist field called "Customer Type" with values "Prospect", "Customer", "Partner"  
Then the "Customer Type" field should be visible on the Account Page Layout  

Scenario: Validate Customer Number Requirement
Given I have set the "Customer Type" to "Customer"  
When I attempt to save the account record without entering a "Customer Number"  
Then I should see an error message "Customer Number is required when Customer Type is Customer."  
And the record should not be saved
