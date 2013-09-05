Feature: Manage the skills list

  Scenario: I should be able to login with an admin user.
    Given I have a admin user
    And I am in the root page
    When I fill "admin" in the "username" field
    And I fill "admin1234" in the "password" field
    And I click "Login"
    Then I see "Bienvenido Administrador"

  Scenario: I should be able to add a new skill to the list.
    Given I have a admin user
    And I login to the app as admin
    When I click "Skills"
    And I click "Add Skill"
    And I fill "Java" in the "skill" field
    And I click "Add"
    Then I see "Java"

  Scenario: I should be able to delete a skill from the list
    Given I have a admin user
    And I login to the app as admin
    When I click "Skills"
    And I see "Java"
    And I click "Remove"
    Then I don't see "Java"


