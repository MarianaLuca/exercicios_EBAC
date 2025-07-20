Feature: Product Configuration
  As a customer of EBAC-SHOP
  I want to configure the product according to my size and taste
  And choose the quantity
  So that I can add it to the cart

  Background:
    Given I am on the product page

  Scenario: Required fields must be selected
    When I try to add the product to the cart without selecting color, size or quantity
    Then the system should display a message requiring those selections

  Scenario: Limit quantity to 10 items
    When I select a quantity greater than 10
    Then the system should display an error message and not allow adding to cart

  Scenario: Clear button resets fields
    When I click on the "Clear" button
    Then all fields should return to their default state
