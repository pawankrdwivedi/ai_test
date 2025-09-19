Feature: Order Management System - Order Browse

  The system allows users to view, filter, modify, and manage orders efficiently.

  Scenario: View active orders
    Given I navigate to "https://oms.example.com/orders"
    When I select "Active Orders" from the order status filter
    Then I should see a list of active orders

  Scenario: Filter orders by status
    Given I navigate to "https://oms.example.com/orders"
    When I apply the filter "Status" with value "Pending"
    Then I should see only orders with status "Pending"

  Scenario: Sort orders by date
    Given I navigate to "https://oms.example.com/orders"
    When I sort orders by "Date" in descending order
    Then I should see orders sorted by date from newest to oldest

  Scenario: Modify an existing order
    Given I navigate to "https://oms.example.com/orders"
    And I select an order with OrderID "12345"
    When I change the "Quantity" to "200"
    And I change the "Price" to "150.00"
    And I click "Save Changes"
    Then I should see a confirmation message "Order updated successfully"

  Scenario: Cancel an open order
    Given I navigate to "https://oms.example.com/orders"
    And I select an order with OrderID "67890"
    When I click "Cancel Order"
    Then I should see a confirmation message "Order cancelled successfully"

  Scenario: Perform order action - duplicate order
    Given I navigate to "https://oms.example.com/orders"
    And I select an order with OrderID "54321"
    When I click "Duplicate Order"
    Then I should see a new order created with the same details as OrderID "54321"

  Scenario: Generate order activity report
    Given I navigate to "https://oms.example.com/reports"
    When I select "Order Activity Report"
    And I click "Generate Report"
    Then I should see a report with order activity details

  Scenario: Save a search activity
    Given I navigate to "https://oms.example.com/orders"
    When I apply filters for "SecurityID" with value "XYZ"
    And I click "Save Search"
    And I enter "My XYZ Search" as the search name
    Then I should see a confirmation message "Search saved successfully"
```