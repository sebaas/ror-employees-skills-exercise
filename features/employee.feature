Feature: Allow employee to login

  Scenario: I should be able to login with a created user.
    Given I enter "JuanPerez" in the "username" field
    And I enter "pass1234" in the "password" field
    When I press "Login"
    Then I see "Bienvenido JuanPerez"

  Scenario: I should be able to login with a recently registered user.
    Given I press "Register"
    And I fill "Juan" in the "name" field
    And I fill "Perez" in the "last_name" field
    And I fill "pass1234" in the "password" field
    And I fill "pass1234" in the "password_verification" field
    And I enter "JuanPerez" in the "username" field
    And I enter "pass1234" in the "password" field
    When I press "Login"
    Then I see "Bienvenido JuanPerez"


  Scenario: I should be able to add a new skill from list.
    Given I login to the app
    And I press "Add Skill"
    And I choose "Java" in the "skill" field
    And I fill "1999" in the "start_year" field
    And I fill "2012" in the "end_year" field
    When I press "Add"
    Then I see "Java"

  Scenario: I should be able to delete a recorded skill
    Given I login to the app
    And I see "Java"
    When I press "Remove"
    Then I don't see "Java"

  Scenario: I should be able to add a free skill
    Given I login to the app
    And I press "Add Skill"
    And I fill "Skydiving" in the "freeskill" field
    And I fill "1999" in the "start_year" field
    And I fill "2012" in the "end_year" field
    When I press "Add"
    Then I see "Skydiving"

