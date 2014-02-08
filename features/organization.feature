Feature: Organization
  In order to work in groups of people
  As an authenticated user
  I want to create organizations

  Scenario: User creates an organization
    Given I am an authenticated user
    When I create an organization
    Then it gets added to my organizations list
    And I become part of the organization

  Scenario: User adds members to an organization
    Given I am an authenticated user
    And I am part of an organization
    When I add new members to it
    Then they become part of the organization

  Scenario: User removes members from an organization
    Given I am an authenticated user
    And I am part of an organization
    When I remove members from it
    Then they are not part of the organization anymore

  Scenario: User deletes an organization
    Given I am an authenticated user
    And I am part of an organization
    When I delete it
    Then it gets removed from my organizations list
