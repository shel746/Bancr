Feature: Graph the accounts

Scenario: I click on an account and it should not graph cause no transactions

Given I am on the login page for Bancr2
When I upload a good csv file
When I click on the button to graph an account1
Then I should see it graphed on the page

