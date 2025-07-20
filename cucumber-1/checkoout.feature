


Feature: Checkout Registration
  As a customer of EBAC-SHOP
  I want to complete my registration
  So I can finish my purchase

  Background:
    Given I am on the checkout registration form

  Scenario: All mandatory fields must be filled
    When I fill in all fields marked with an asterisk
    And I click the "Register" button
    Then the system should allow registration

  Scenario: Invalid email format
    When I enter "invalidemail.com" in the email field
    And I click the "Register" button
    Then the system should display an error for invalid email

  Scenario Outline: Attempting registration with empty mandatory fields
    When I leave the "<field>" field empty
    And I click the "Register" button
    Then the system should display a warning message

    Examples:
      | field        |
      | Name         |
      | Email        |
      | Address      |
      | Password     |
