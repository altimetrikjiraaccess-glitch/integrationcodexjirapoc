Feature: SCRUM-5 — Add Custom Field and Validation Rule on Contact Object

Scenario: Create Customer Type Field on Contact Object
Given the Contact object exists  
When a new field called "Customer Type" (Picklist) is added with values "Prospect", "Customer", "Partner"  
And the field is made visible on the Opportunity Page Layout  
And a validation rule is created that requires "Customer Number" (Text) when "Customer Type" is "Customer"  
Then the error message "Customer Number is required when Customer Type is Customer." should display if "Customer Type" is "Customer" and "Customer Number" is empty  
And the record should not save if the validation rule condition is not met.
