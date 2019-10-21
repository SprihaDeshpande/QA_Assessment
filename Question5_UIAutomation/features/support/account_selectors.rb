# In this page, we purely store all button, and elements name and in associaton with their xpath, or locators to be able to spot them through the DOM.
# We make use of a dictionary that will consist of all elements and their xpath in the form of string and could be called anytime through feature files.
# This way we reuse the code again.

$dictionary = {
  "login button" => "//button[@data-test='LoginForm-log-in-button']",
  "account button" => "//a[@href='/account/profile']",
  "edit profile button" => "//button[@data-test='ProfileForm-edit-button']",
  "save button" => "//button[@data-test='ProfileForm-save-button']",
  "start free trial button" => "//button[@aria-label='Annual Plan, Start Free Trial']",
  "credit card save button" => "//button[@data-test='CreditCardForm-save-button']",
  "log out button" => "//span[contains(text(), 'Log Out')]",
  "yes on logout portal" => "//button[@data-test='Confirmation-modal-accept-button']",
  "addresses tab" => "//a[@href='/account/addresses']",
  "add an address" => "//div[@data-test='AddressesContainer-addNewAddress']",

  # Address modal: Elements and locators
  "Street1 Address Line" => '//input[@name="street1"]',
  "Town Field" => '//input[@name="city"]',
  "State Field" => '//input[@name="state"]',
  "save button on payment modal" => '//button[@data-test="AddressForm-submit-button"]'
}
