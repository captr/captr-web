Feature: Sign in with an existing account
  Most of the features require having an account
  To benefit from these features users must be signed in into their accounts
  Users should not be able to sign in unless they have an account

  Background:
    Given I am currently not signed in

  Scenario: Sign in
     When I successfully authenticate with the social network
     Then I should see my account

  Scenario: Cannot sign in
     When I fail authenticating with the social network
     Then I should get an authentication error
