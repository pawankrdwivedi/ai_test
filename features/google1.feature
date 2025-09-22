Feature: Google search for Playwright MCP

  Scenario: Search for 'Playwright MCP' on Google
    Given I navigate to "https://www.google.co.in"
    When I fill "search" with "Playwright MCP"
    And I press "Enter"
    Then I should see results containing "Playwright MCP"
```