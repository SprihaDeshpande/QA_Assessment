@account-page
Feature: Test Account Feature on Shipt
Scenario: Test Shipt Account Page
  Given I navigate to "Shipt"
  And I wait for 2 seconds
  And I enter good credentials on to login
  And I wait for 2 seconds
  And I click "login button"
