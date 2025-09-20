Feature: Google search for Playwright MCP

  Scenario: Search for 'Playwright MCP' on Google
    Given I navigate to "https://www.google.co.in"
    When I fill "search box" with "Playwright MCP"
    And I click "Google Search"
    Then I should see "Playwright MCP" in the search results
```