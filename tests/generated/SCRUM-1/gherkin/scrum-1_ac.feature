Feature: SCRUM-1 — Add Custom Field and Validation Rule on Account Object

Scenario: Create Customer Type Field and Validate Customer Number
Given the Account object has a new field called Customer Type with values Prospect, Customer, Partner
And the Customer Type field is visible on the Account Page Layout
When the Customer Type is set to Customer
And the Customer Number field is left empty
Then the record cannot be saved
And the error message "Customer Number is required when Customer Type is Customer." is displayed.
