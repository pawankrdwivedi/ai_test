Feature: Google Search Functionality
  Verify that searching for 'Playwright MCP' on Google returns relevant results

  Scenario: Successful search for 'Playwright MCP'
    Given I am on the Google homepage
    When I enter 'Playwright MCP' into the search bar
    And I click the search button
    Then I should see search results related to 'Playwright MCP'
    And the page title should contain 'Playwright MCP - Google Search'

  Scenario: Search results contain expected links
    Given I have searched for 'Playwright MCP'
    Then I should see at least one result containing 'Playwright'
    And I should see at least one result containing 'MCP'

  Scenario: Search with no results
    Given I am on the Google homepage
    When I enter 'asdkjfhaskjdfh' into the search bar
    And I click the search button
    Then I should see a message indicating no results were found
```

### Explanation:
- **Feature**: Describes the overall functionality being tested, which is the Google search feature.
- **Scenario**: Each scenario represents a specific test case. Here, we have scenarios for a successful search, verifying specific content in the results, and handling a search with no results.
- **Given**: Sets up the initial context or state before the main action.
- **When**: Describes the action that triggers the scenario.
- **Then**: Describes the expected outcome or result of the action.

This feature file can be used with a testing framework that supports Gherkin syntax, such as Cucumber, to automate the testing of Google search functionality.# BASE URL: https://www.google.co.in