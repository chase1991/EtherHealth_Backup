Feature: Login and ask question

  As a user
  so that I can log in to the web site
  I want to add a new author to the list

  Scenario: Log in to website: add user
    Given am on the signup page
    When I add a new user
    Then I should be able to see page of all users

  Scenario: Log in to website: log in failed
    Given am on the login page
    When enter the wrong user information
    Then I should remain in the same login page
    
  Scenario: Log in to website: log in 
    Given am on the login page
    When enter the exist user information