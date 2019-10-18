$loginbutton = '//button[@data-test="LoginForm-log-in-button"]'
$accountbutton = '//a[@href="/account/profile"]'


Given(/^I navigate to "([^"]*)"$/) do |term|
@browser ||= Watir::Browser.new :Chrome
@browser.goto "https://shop.shipt.com/"
end

When /^I wait for (\d+) seconds?$/ do |n|
    sleep(n.to_i)
end

When /^I enter good credentials on to login?$/ do
    @browser.text_field(:xpath => '//input[@data-test="LoginForm-emailField"]').set "spriha@shipt.com"
    @browser.text_field(:xpath => '//input[@type="password"]').set("Spriha@123")
end

When /^I click "([^"]*)"$/ do |button_name|
  $vars = ""
  if button_name=="login button"
    $vars = $loginbutton
  elsif button_name=="account button"
    $vars = $accountbutton
  end
  @browser.element(:xpath => $vars).click
end
