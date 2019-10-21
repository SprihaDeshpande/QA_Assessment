# This file describes all the test steps that a feature file will access.
# Let us look at each step, and describe what logic is performed individually before the definition


# This is a simple definition to navigate to member web app page. Here the Watir driver will navigate to the url and
# the browser is made an instance variable such that it can be accessed across any steps during our automation
Given(/^I navigate to "([^"]*)"$/) do |term|
@browser ||= Watir::Browser.new :Chrome
@browser.goto "https://shop.shipt.com/"
end

# This step declares the time implicit/static time waits. To ensure the element has sufficient time to show up to the DOM used by the
# webdriver to locate it.
When /^I wait for (\d+) seconds?$/ do |n|
    sleep(n.to_i)
end

# This step declares the good credentials to be populated as input values. Lets keep it at stationary values to avoid
# discrepency during automation.
When /^I enter good credentials on to login?$/ do
    @browser.text_field(:xpath => '//input[@data-test="LoginForm-emailField"]').set "spriha@shipt123.com"
    @browser.text_field(:xpath => '//input[@type="password"]').set("Welcome123")
end

# This step introduces button value that is to be clicked and can be obtained from a global dictionary declared
# in a selector file that would comprise of respective xpath element of the button in text
When /^I click "([^"]*)"$/ do |button_name|
$vars = $dictionary[button_name]
@browser.element(:xpath => $vars).click
end

# This might seem like a definition that is big. But is, infact very simple! When we want to edit member information,
# 1. we generated a faker user number and user name that is then populated on to the selector identified with the help of iframe and xpath through Watir.
# 2. Also, before which we make sure to clear all the pre-populated field data.
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

# In this step, we verify for either a text taken as input from feature file or a selector that contains a text
# is visible on the web app on account page
Then("I verify {string} is displayed on account page") do |text|
  if text == "New Name generated"
    @browser.button(visible_text: $string)
  else
    @browser.button(visible_text: text)
  end
end

# Here we speak of bad card credentials to populate invalid card values on the card form page
# we store the card details prior as a variables, and for CVV we generate a random number to be stored as card CVV value
# We then further proceed to populate these variables with data onto our web browser by finding the element in DOM, and switching through the elements with the help of an iframe.
Then("I enter bad card credentials") do
  card_number = "4242424242424241"
  date = "10/22"
  CVV_number = rand(200..999)
  ZIP = rand(11111..99999)
  @browser.iframe(:xpath => "/html/body/div[6]/div/div/div/div[2]/section/form/div[2]/div[1]/div/div/div/iframe").text_field(:xpath => "//input[@name='cardnumber']").set card_number
  @browser.iframe(:xpath => "/html/body/div[6]/div/div/div/div[2]/section/form/div[2]/div[2]/div/div/div/iframe").text_field(:xpath => "//input[@name='exp-date']").set date
  @browser.iframe(:xpath => "/html/body/div[6]/div/div/div/div[2]/section/form/div[2]/div[3]/div/div/div/iframe").text_field(:xpath => "//input[@name='cvc']").set CVV_number
  @browser.text_field(:xpath => "//input[@id='zipcode']").set ZIP
end

# Here we enter a particular string on the element locator
# Hence we store the text in the form of a variable, find the locator through our selector file and then send the keys to the respective field.
Given("I enter text {string} on {string}") do |string, string2|
  @variable = string
  $vars = $dictionary[string2]
  @browser.text_field(:xpath => $vars).set @variable
end
