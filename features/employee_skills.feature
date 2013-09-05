Feature: Manage the employee's skill search

  Scenario: I should be able to see the employee's skills.
    Given I have a admin user
    And I have information about a user
    And I login to the app as admin
    When I click "Employees"
    And I click "Juan Perez"
    Then I see "Java"
    And I see "1999"
    And I see "2012"

  Scenario: I should be able to see which employee's have a particular skill and for how long he used it
    Given I have a admin user
    And I have information about a user
    And I login to the app as admin
    When I click "Skills"
    And I click "Java"
    Then I see "JuanPerez"
    And I see "14 years"


  Scenario: I should be able to export the employee's skills to an excel.
    Given I have a admin user
    And I have information about a user
    And I login to the app as admin
    When I click "Employees"
    And I click "JuanPerez"
    And I click "Export to Spreadsheet"
    Then I see a file

  Scenario: I should be able to export the list of employee's for a particular skill to an excel
    Given I have a admin user
    And I have information about a user
    And I login to the app as admin
    When I click "Skills"
    And I click "Java"
    And I click "Export to Spreadsheet"
    Then I see a file

