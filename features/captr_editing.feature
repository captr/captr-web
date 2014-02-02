Feature: Captr editing
  In order to make a captr
  As a user
  I want to have a video editor

  Scenario: User creates a basic captr
    Given I want to create a new captr
    When I put down a script into sections
    And I associate to each of them a media
    Then I see the video preview

  Scenario: User reviews a captr timeline
    Given I have an auto–generated captr
    When I edit the timeline
    Then I see the new preview
