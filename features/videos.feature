Feature: Video Management
  In order to manage my videos
  As a user
  I want to create and organize them in paths

  Scenario: User creates a video
    Given I am an authenticated user
    When I create a new video
    Then it gets added to my videos

  Scenario: Organization creates a video
    Given I am an authenticated user
    And I am part of an organization
    When I create a new video
    But I specify my organization
    Then it gets added to the organization videos

  Scenario: User creates a path
    Given I am an authenticated user
    And I have already created several videos
    When I create a new path
    And I add videos to it
    Then it gets added to my paths
    And I see the videos inside it

  Scenario: Organization creates a path
    Given I am an authenticated user
    And I am part of an organization
    And I have already created several videos
    When I create a new path
    And I add videos to it
    But I specify my organization
    Then it gets added to the organization paths
    And I see the videos inside it
