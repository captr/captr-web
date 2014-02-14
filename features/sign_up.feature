Feature: Sign up for a new account
  This is the process for creating new accounts
  Users can create new accounts with their social network profiles

  Background:
    Given I am currently not signed in
# TODO: discuss step below:
#       1. should it be there?
#       2. see "the social network" usage.
      # And I current have at least one profile on various social networks

  Scenario: Sign up for the first time
    When I am a new user
     And I successfully authenticate with the social network
    Then I should get a new account

  Scenario: Try to sign up again
    When I am an existing user
     And I successfully authenticate with the social network
    Then I should get back my previous account

  Scenario: Cannot sign up
    When I fail authenticating with the social network
    Then I should get an authentication error
