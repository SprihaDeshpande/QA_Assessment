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
if button_name=="login button"
  @browser.button(visible_text: "LOG IN").click
else
  @browser.element(:xpath => '//a[@href="/account/profile"]').click
end
end
