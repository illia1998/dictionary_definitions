Feature: As a user, I want to look up random word definitions from dictionary

  Scenario Outline: Retrieving random word definitions
    Given I search a random word <Word_type> definitions
    Then the search should return at least one definition
    And each definition is printed in correct format

    Examples:
      | Word_type |
      | sense     |
      | origin    |
      | idiom     |
