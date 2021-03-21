Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given มีสินค้า "Bread" ราคา 20.50 อยู่
    And มีสินค้า "Jam" ราคา 80.00 อยู่
    And มีสินค้า "Peanut Butter" ราคา 100 อยู่

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    And I buy "Peanut Butter" with quantity 2
    Then total should be 321.00


