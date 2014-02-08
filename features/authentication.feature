Feature: Authentication
  In order to authenticate in captr.io
  As an anonymous user
  I want to log in via Facebook and Twitter

  Scenario: Anonymous authenticates via Facebook
    Given I am an anonymous user
    When I log in via Facebook
    Then I become an authenticated user

  Scenario: Anonymous authenticates via Twitter
    Given I am an anonymous user
    When I log in via Twitter
    Then I become an authenticated user
