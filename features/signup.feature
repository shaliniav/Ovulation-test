Feature: Signup feature 

Scenario: Check if error message is displayed if all or any one of fields are blank on SignIn page

    Given I am on "Splash" screen
    When I press "Sign Up With Email"
    And I enter "test" as the name 
    And I enter "" as the EmailId for Sign up page 
    And I enter "123456789" as the Password
    And I enter "123456789" as the Confirm Password 
    And I press "Go" 
    Then I see a toast message displaying "Please enter all the mandatory fields." 



Scenario: Verify if error message is dispay if user enters a wrong email format
    Given I am on "Splash" screen
    When I press "Sign Up With Email"
    And I enter "test" as the name 
    And I enter "newuser@samp" as the EmailId for Sign up page 
    And I enter "123456789" as the Password
    And I enter "123456789" as the Confirm Password 
    And I press "Go" 
    Then I see a toast message displaying "Please enter valid Email id." 


Scenario:  Existing  user signing up as new user  should show correct error message 
    Given I am on "Splash" screen
    When I press "Sign Up With Email"
    And I enter "test" as the name 
    And I enter "test346@test.com" as the EmailId for Sign up page 
    And I enter "123456789" as the Password
    And I enter "123456789" as the Confirm Password 
    And I press "Go" 


Scenario: New user can sign up 
    Given I am on "Splash" screen
    And I press "Sign Up With Email"
    And I register as new user
    Then I see "GetStarted" screen 










