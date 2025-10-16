Feature: SCRUM-1 — Add Custom Field and Validation Rule on Account Object

Scenario: Create Customer Type Field on Account Object
Given the Account object exists  
When a new field called "Customer Type" (Picklist) is added with values "Prospect", "Customer", "Partner"  
And the field is visible on the Account Page Layout  
And a validation rule is created that requires "Customer Number" (Text) when "Customer Type" is "Customer"  
Then the error message "Customer Number is required when Customer Type is Customer." should be displayed if "Customer Type" is "Customer" and "Customer Number" is empty  
And the record should not be saved if the validation rule condition is not met.
