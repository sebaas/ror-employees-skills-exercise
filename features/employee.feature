Feature: Allow employee to login

  Scenario: I should be able to login with a recently registered user.
    Given I am in the root page 
    When I click "Register"
    And I fill "Pedro" in the "name" field
    And I fill "Garcia" in the "last_name" field
    And I fill "pass1234" in the "password" field
    And I fill "pass1234" in the "password_verification" field
    And I fill "PedroGarcia" in the "username" field
    And I click "Login"
    Then I see "Bienvenido PedroGarcia"

  Scenario: I should be able to login with a created user.
    Given I have a registered user
    And I am in the root page
    When I fill "JuanPerez" in the "username" field
    And I fill "pass1234" in the "password" field
    And I click "Login"
    Then I see "Bienvenido JuanPerez"

  Scenario: I should be able to add a new skill from list.
    Given I have a registered user 
    And I have a skill loaded
    And I login to the app
    When I click "Add Skill"
    And I choose "Java" in the "skill" field
    And I fill "1999" in the "start_year" field
    And I fill "2012" in the "end_year" field
    And I click "Add"
    Then I see "Java"

  
  Scenario: I should be able to delete a recorded skill
    Given I have information about a user
    And I login to the app
    When I see "Java"
    And I click "Remove"
    Then I don't see "Java"

  Scenario: I should be able to add a free skill
    Given I have a registered user 
    And I login to the app
    When I click "Add Skill"
    And I fill "Skydiving" in the "freeskill" field
    And I fill "1999" in the "start_year" field
    And I fill "2012" in the "end_year" field
    And I click "Add"
    Then I see "Skydiving"

