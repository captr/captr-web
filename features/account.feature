Feature: Account
  Accounts contain valuable information related to the users
  Each account is identified with a unique username

  Scenario: Decide for a unique username
    Given I am a new user
     When I sign up for the first time
     Then I should decide for a unique username
