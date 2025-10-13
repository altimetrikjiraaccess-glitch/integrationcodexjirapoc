Feature: SCRUM-1 — Add Custom Field and Validation Rule on Account Object

Scenario: Create Customer Type Field and Validate Customer Number
Given the Account object has a new field called Customer Type with values Prospect, Customer, Partner
And the Customer Type field is visible on the Account Page Layout
When the Customer Type is set to Customer
Then the Customer Number field must be required
And if Customer Number is not filled, an error message "Customer Number is required when Customer Type is Customer." should be displayed
And the record should not be saved.
