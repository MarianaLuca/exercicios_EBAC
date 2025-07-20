Feature: User Login
  As a customer of EBAC-SHOP
  I want to log in to the platform
  So I can view my orders

  Background:
    Given I am on the login page

  Scenario Outline: Valid and invalid login attempts
    When I enter the username "<username>" and password "<password>"
    And I click the login button
    Then I should see "<message>"

    Examples:
      | username    | password     | message                            |
      | maria@ebac.com | senha123 | Redirected to checkout page        |
      | maria@ebac.com | wrong     | User or password invalid message   |
      | wrong@ebac.com | senha123 | User or password invalid message   |
