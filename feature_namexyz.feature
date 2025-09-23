Feature: User login and ticket management

  Scenario: Login and filter tickets by status
    Given I navigate to "https://demo-saas.bugbug.io/sign-in"
    When I fill "username" with "vishwas.tomar@irissoftware.com"
    And I fill "password" with "India@12345"
    And I click "Sign In"
    Then I should see "Dashboard"
    When I select "In progress" from the "status" dropdown
    Then I should see tickets with status "In progress"

  Scenario: Create a new ticket
    Given I am logged in as "vishwas.tomar@irissoftware.com"
    When I navigate to "Submit new ticket"
    And I fill "Your name" with "Vishawas"
    And I fill "Details" with "Random details"
    And I click "Submit"
    Then I should see "Ticket submitted successfully"
```