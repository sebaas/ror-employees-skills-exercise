Feature: Manage the skills list

  Scenario: I should be able to login with an admin user.
    Given I enter "admin" in the "username" field
    And I enter "admin1234" in the "password" field
    When I press "Login"
    Then I see "Bienvenido Administrador"

  Scenario: I should be able to add a new skill to the list.
    Given I login to the app as admin
    And I press "Skills"
    And I press "Add Skill"
    And I fill "Java" in the "skill" field
    When I press "Add"
    Then I see "Java"

  Scenario: I should be able to delete a skill from the list
    Given I login to the app as admin
    And I press "Skills"
    And I see "Java"
    When I press "Remove"
    Then I don't see "Java"


