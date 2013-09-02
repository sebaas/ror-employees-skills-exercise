Feature: Manage the employee's skill search

  Scenario: I should be able to see the employee's skills.
    Given I login to the app as admin
    And I press "Employee"
    When I press "JuanPerez"
    Then I see "Java"
    And I see "1999"
    And I see "2012"

  Scenario: I should be able to see which employee's have a particular skill and for how long he used it
    Given I login to the app as admin
    And I press "Skills"
    When I press "Java"
    Then I see "JuanPerez"
    And I see "14 years"


  Scenario: I should be able to export the employee's skills to an excel.
    Given I login to the app as admin
    And I press "Employee"
    And I press "JuanPerez"
    When I press "Export to Spreadsheet"
    Then I see a file

  Scenario: I should be able to export the list of employee's for a particular skill to an excel
    Given I login to the app as admin
    And I press "Skills"
    And I press "Java"
    When I press "Export to Spreadsheet"
    Then I see a file

