Feature: Check products in Catalog
  As a owner
  I want to check quantity of products left

  Background:
    Given มีสินค้า "Bread" ราคา 20.50 อยู่และมีเหลือ 5
    And มีสินค้า "Jam" ราคา 80.00 อยู่

  Scenario: Check 1 product
    When I check "Bread"
    Then "Bread" have 5 quantity

  Scenario: Check multiple product
    When I check "Bread"
    And I check "Jam"
    Then "Bread" have 5 quantity
    Then "Jam" have 10 quantity