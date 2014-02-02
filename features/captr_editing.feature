Feature: Captr editing
  In order to make a captr
  As a user
  I want to have a video editor

  Scenario: User creates a basic captr
    Given I want to create a new captr
    When I put down a script into sections
    And I associate to each of them a media
    Then I can see the video preview
