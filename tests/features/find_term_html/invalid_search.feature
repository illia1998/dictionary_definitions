@negative
Feature: As a user, I want to receive appropriate error messages when search is invalid

  Scenario Outline: Using invalid parameters to search a word
    Given I search a non-existing <word_type> definitions for <word> via parse
    Then I should see appropriate error message
    Examples:
      | word      | word_type |
      | stample   | sense     |
      | ruby      | idiom     |
      | worldwide | synonym   |
      | wortunde  | origin    |
      | exciting  | audio     |