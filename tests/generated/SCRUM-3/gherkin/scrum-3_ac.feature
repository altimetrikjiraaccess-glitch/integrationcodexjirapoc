Feature: SCRUM-3 — Add Custom Field and Validation Rule on Opportunity Object

Scenario: Create Customer Type Field on Opportunity Object
Given the Opportunity object exists  
When a new field called "Customer Type" (Picklist) is added with values "Prospect", "Customer", "Partner"  
Then the "Customer Type" field should be visible on the Opportunity Page Layout  
And a validation rule is created that requires "Customer Number" (Text) when "Customer Type" is "Customer"  
And the error message "Customer Number is required when Customer Type is Customer." is displayed if the condition is not met  
And the record cannot be saved if "Customer Number" is not provided when "Customer Type" is "Customer".
