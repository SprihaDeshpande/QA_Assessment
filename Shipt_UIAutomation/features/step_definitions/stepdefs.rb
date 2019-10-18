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
$vars = $dictionary[button_name]
@browser.element(:xpath => $vars).click
end

Given("I edit member details") do
  o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
  $string = (0...10).map { o[rand(o.length)] }.join
  count1 = 0
  while count1 <50 and @browser.text_field(:xpath => '//input[@id="name"]').value != ""
    @browser.text_field(:xpath => '//input[@id="name"]').set(:backspace)
    count1 = count1+1
  end
  count2 = 0
  while count2 <20 and @browser.text_field(:xpath => '//input[@id="phone"]').value != ""
    @browser.text_field(:xpath => '//input[@id="phone"]').send_keys :backspace
    count2 = count2+1
  end
  @browser.text_field(:xpath => '//input[@id="name"]').set $string
  generated_phone_number = rand(10 ** 10).to_s.rjust(10,'0')
  @browser.text_field(:xpath => '//input[@id="phone"]').set generated_phone_number
end

Then("I verify {string} is displayed on account page") do |text|
  if text == "New Name generated"
    @browser.button(visible_text: $string)
  end
end
