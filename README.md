# Shipt_UIAutomation
Shipt QA Assessment Project

Hello! Welcome to Shipt QA Assessment Project. Here, we go through the assessment questions in the following file attached in the git repo => [link to Shipt QA Assessment](https://github.com/SprihaDeshpande/Shipt_QA_Assessment/blob/master/Assessment%20Questions.pdf)

-------------------------------------------------------------------------------------------------------------------------

### **Answer to Question1**: 

Here we have covered test cases for Account Feature and pursued the test around Positive and Negative Testing. The features functionality, along with steps to replicate namuall, with expected and actual results are documented in the following folder. => [folder for Viewing Test Cases in excel](https://github.com/SprihaDeshpande/Shipt_QA_Assessment/blob/master/Question1_Shipt_TestCases.xls)

or you can go here => [folder for Viewing Test Cases in numbers](https://github.com/SprihaDeshpande/Shipt_QA_Assessment/blob/master/Question1_Shipt_TestCases.numbers)

-------------------------------------------------------------------------------------------------------------------------

### **Answer to Question2**: 

In this answer we give an insight to the bug and bad workflow. We look at a bug in production which does not go through selecting a store post modifying the ZIP code value on the address modal in account page. This is of utmost concern and we give a priority of P2 for this bug. To dive deep into details, access this file => 

Also, refer the screen recording for more refernce into the bug. We see that in networking calls, the value of ZIP and stores are being updated. But do not reflect in changing the store and the loading does not terminate.

[View file for Screen Recording](https://github.com/SprihaDeshpande/Shipt_QA_Assessment/blob/master/bug_production.mov)


-------------------------------------------------------------------------------------------------------------------------

### **Answer to Question5**:

## **UI Automation**

In here we automate the test feature Account Page. Make sure you have the following installed
  - [Ruby](https://www.ruby-lang.org/en/)
  - [Bundler](https://bundler.io/)
 
 To check if ruby and bundle are installed properly run the following commands on terminal to ensure the same.
 - `ruby -v`
 - `bundle -v`
 
 Next, we need to install cucumber and prepare the file structure. Enter the following commands on terminal to ensure the same in the file where we have downloaded the Shipt UI files => [Download Shipt UI Automation Files](https://github.com/SprihaDeshpande/Shipt_QA_Assessment/tree/master/Shipt_UIAutomation)
 - `bundle install`
 - `cucumber --init`
 
 Since we use Watir webdrive make sure to have this gem installed
 - `gem install watir`
 
 To run the whole of cucumber file, we can use the following command on terminal
 - `cucumber` or `@account-page` for complete automation
 
 To run scenario wise, we have the following scenarios and their tags
 
 Scenario: Scenario: Test Member Profile Edits
 - `cucumber --tags @account-member-profile-edits`
 
 Scenario: Member attempts to buy membership with invalid card details
  - `cucumber --tags @account-buy-membership-invalid-card`
 
 Scenario: Member logs out of account successfully
 - `cucumber --tags @account-logout-successful`
 
 Scenario: Zip code field cannot remain empty
  - `cucumber --tags @account-test-for-mandatory-zipcode`

-------------------------------------------------------------------------------------------------------------------------

### **Answer to Question6**:

In here we perform API Automation. All the code and utilities are in the git hub repo => [link for API Automation] (https://github.com/SprihaDeshpande/Shipt_QA_Assessment/tree/master/APIAutomation)

We do API Testing through Pytest. All the code is written in Python3.

Installation options:
- `pip install -U pytest` 
- `easy_install -U pytest`
 
To execute type the following on the terminal post downloading the files
- `pytest -v`

This will execute all the test cases and along with assertions error being displayed.
<img width="1658" alt="Screen Shot 2019-10-19 at 5 59 37 PM" src="https://user-images.githubusercontent.com/50254090/67153283-23716f00-f29b-11e9-949a-68acec24f53a.png">

-------------------------------------------------------------------------------------------------------------------------

### **Answer to Question7**:

Above and Beyond API

This is a continuity of Answer 6. In here we have files from the assessment folder =>[Click here for MOCK Server API](https://github.com/SprihaDeshpande/Shipt_QA_Assessment/tree/master/MockAPI%20copy) 

Here we create a mock server that would return the same API.
The link for the base URL is as follows => [Base URL of My Mock Server](https://07564992-22d5-4fe2-8fc7-b64a63c3a801.mock.pstmn.io/baseurl)

The documentation for the Mock Server could be seen at => [Documentation for Mock Server Swapi.co](https://web.postman.co/collections/8513503-432264ea-a0a9-44ba-b711-fdeb24282e26?version=latest&workspace=53987046-ec3d-4853-891d-9324ba07bab8)

Installation options:
- `pip install -U pytest`  (If you have PIP installed)
- `easy_install -U pytest`

We can ideally run the same test by having the following command on terminal in the folder Mock API to execute the test: 
- `pytest -v`

