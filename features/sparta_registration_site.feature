Feature: Sparta Registration SIte

  Scenario: Successfully register an account onto sparta site and get a confirmation message
    Given I access the Sparta registration form page
    And I input first name
    And I input last name
    And I input age
    And I input dob
    And I select gender (female)
    And I input a degree
    And I select a university
    And I input an address
    And I input an address_no_two
    And I input a city
    And I input a county
    And I input a postcode
    And I input an email address
    And I input information ino the skills field
    And I input phone number
    And I input linkedIN URL
    And I upload a file
    And I select devops
    And I select terms & conditions
    And I input ratings
    When I click the sign in button
    Then I receive a message for successful confirmation
