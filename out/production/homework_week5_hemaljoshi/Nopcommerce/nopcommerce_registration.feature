Feature: Nopcommerce Registration

  As a User
  I want to check the Register functionality of Nopcommerce

  Background: I am Nopcommerce Registration Page
    Given I open the google chrome Browser
    When  I Open the Url http: // demo.nopcommerce.com/register

  Scenario Outline: I should not be able to register with invalid data on mandatory filed (*) of registration page
    When  I enter first name "<First Name>"
    And   I enter last name "<Last name>"
    And   I enter Email address "<Password>"
    And   I enter Confirm password "<Confirm password>"
    And   I click on Register button
    Then  I can see an error message "<error message>"
    And   I am not able to register

    Examples:
      | First name | Last Name | Email                                     | Password | Confirm Password     | Error message                              |
      | ""         | Bakshi    | bakshi@gmail.com                          | 456897  | 456897               | Please enter first name                    |
      | Rohan      | ""        | bakshi@gmai.com                           | 456897  | 456897               | Please enter last name                     |
      | Rohan      | Bakshi    | " "                                       | 456897  | 456897               | please enter valid email                   |
      | Rohan      | Bakshi    | bakshi@gmail.com                          | 456897  | ""                   | password is required
      | Rohan      | Bakshi    | bakshi@gmail.com                          | 456897  | ""                   | Confirm password is require                |
      | Rohan      | Bakshi    | bakshi@gmail.com                          | 456897  | ""                   | password and confirm password do not match |
      | ""         | " "       |   ""                                      | ""      | ""                   | Mandatory (*) field is required            |

    Scenario:  I shold be bale to select any one ratio button from gender lable of Ypur Personal Details section
      Given    I am gender lable of Your personal detil section
      When     I select "Male" radio button
      And      I select "Female"radio button
      Then     I am able to selcet any one of the ratio button.

      Scenario Outline:  I shold be able to selcet Day, Month and Year from drop down list of birth field
        Given            I am on Date of Birth field of your personal details selection
        When             I select Day "<Day>"
        And              I select month "<Month>"
        And              I select "<Year>"
        Then             I am able to select Day, Month and year from drop down list

        Examples:
        |Day|Month    |Year|
        |11 | November|1989|

        Scenario: I shold be able to check and uncheck the Newsletter box on Option section
          Given   I am Newsletter checkbox
          When    I Click on Newsletter checkbox
          And     I again Click on newsletter checkbox
          Then    I was able to check and uncheck the box next to Newsletter section  label

          Scenario: I should be able to register with valid mandatory (*) field data on registration page

            When  I enter First name "Roha"
            And   I enter Last  name "Bakshi"
            And   I enter Email "Bakshi@gmail.com"
            And   I enter Password "456897"
            And   I enter Confirm password "456897"
            And   I click on registration button
            Then  I was able to register successfully