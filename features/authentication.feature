Feature: Authentication
  Most of the features require having an account
  To benefit from these features users must be signed in into their accounts
  Users should not be able to sign in unless they have an account
  Users can create new accounts with their social network profiles

  Background:
    Given I am currently not signed in

  Scenario: User signs up for the first time
    Given I am a new user
     When I successfully authenticate with the social network
      And I choose an unique username
     Then I should see my account

  Scenario: User signs up with conflicting username
    Given I am a new user
     When I successfully authenticate with the social network
      And I choose an existing username
     Then I should be prompted to try another username

  Scenario: User signs up again
    Given I am an existing user
     When I successfully authenticate with the social network
     Then I should see my account

  Scenario: User cancels sign up
    When I cancel authentication with the social network
    Then I should be informed that an account was not created
