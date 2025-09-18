Feature: Order Management System - Order Browsing

  The system allows users to manage and interact with their orders through various functionalities such as viewing, filtering, modifying, and reporting.

  Scenario: View active orders
    Given I navigate to "https://oms.example.com/orders"
    When I select "Active Orders" from the order status filter
    Then I should see a list of active orders

  Scenario: Filter orders by status
    Given I navigate to "https://oms.example.com/orders"
    When I apply a filter with status "pending"
    Then I should see only orders with status "pending"

  Scenario: Sort orders by date
    Given I navigate to "https://oms.example.com/orders"
    When I sort orders by "Timestamp" in descending order
    Then I should see orders sorted by the most recent date first

  Scenario: Modify an existing order
    Given I navigate to "https://oms.example.com/orders"
    And I select an order with OrderID "12345"
    When I change the "Quantity" to "200"
    And I change the "Price" to "150.00"
    And I click "Save Changes"
    Then I should see the order updated with the new quantity and price

  Scenario: Cancel an open order
    Given I navigate to "https://oms.example.com/orders"
    And I select an order with OrderID "67890"
    When I click "Cancel Order"
    Then I should see the order status changed to "cancelled"

  Scenario: Perform order actions
    Given I navigate to "https://oms.example.com/orders"
    And I select an order with OrderID "54321"
    When I choose to "Reroute" the order
    Then I should see a confirmation message for rerouting the order

  Scenario: Generate a report on order activity
    Given I navigate to "https://oms.example.com/reports"
    When I select "Order Activity Report"
    And I specify the date range from "2023-01-01" to "2023-12-31"
    And I click "Generate Report"
    Then I should see a report generated for the specified date range

  Scenario: Save a search activity
    Given I navigate to "https://oms.example.com/orders"
    When I apply a filter with status "executed"
    And I click "Save Search"
    And I name the search "Executed Orders"
    Then I should see the search saved with the name "Executed Orders"
```