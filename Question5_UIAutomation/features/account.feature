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
  And I click "save button"
  And I wait for 5 seconds
Then I verify "New Name generated" is displayed on account page

@account-buy-membership-invalid-card
Scenario: Member attempts to buy membership with invalid card details
  And I click "start free trial button"
  And I enter bad card credentials
  And I wait for 2 seconds
  And I click "credit card save button"
Then I verify "Your card number is invalid." is displayed on account page

@account-logout-successful
Scenario: Member logs out of account successfully
  And I click "log out button"
  And I click "yes on logout portal"
  And I wait for 2 seconds
Then I verify "Welcome Back!" is displayed on account page

@account-test-for-mandatory-zipcode
Scenario: Zip code field cannot remain empty
  And I click "addresses tab"
  And I click "add an address"
  And I enter text "123 California Ave" on "Street1 Address Line"
  And I enter text "San Francisco" on "Town Field"
  And I enter text "CA" on "State Field"
  And I click "save button on payment modal"
