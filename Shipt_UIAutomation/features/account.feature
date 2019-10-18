@account-page
Feature: Test Account Feature on Shipt
Background:
  Given I navigate to "Shipt"
  And I wait for 2 seconds
  And I enter good credentials on to login
  And I wait for 2 seconds
  And I click "login button"
  And I wait for 2 seconds
  And I click "account button"
  And I wait for 2 seconds

@account-member-profile-edits
Scenario: Test Member Profile Edits
  And I click "edit profile button"
  And I edit member details
  And I wait for 2 seconds
