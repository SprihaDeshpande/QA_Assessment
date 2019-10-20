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
 `ruby -v`
 `bundle -v`
 
 Next, we need to install cucumber and prepare the file structure. Enter the following commands on terminal to ensure the same in the file where we have downloaded the Shipt UI files => [Download Shipt UI Automation Files](https://github.com/SprihaDeshpande/Shipt_QA_Assessment/tree/master/Shipt_UIAutomation)
 `bundle install`
 `cucumber --init`
 
