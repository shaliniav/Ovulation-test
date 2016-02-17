Feature: Login feature 

Scenario: As a valid user I can log into my app
    
    Given I am on "Splash" screen
    When I press "Sign In"
    Then I wait up to "10" seconds for the "Sign In" button to appear
    And I enter "test345@test.com" as the EmailId
    And I enter "123456789" as the Password
    And I press "Go" 
    Then the "OvulationCalender" activity should be open
    And I press "SETTINGS"
    And I press "SIGN OUT"

Scenario: As a existing user i can swipe the calender

    Given I sign in with "test345@test.com" as emailId and "123456789" as password
    Then the "OvulationCalender" activity should be open
    Then I wait for 10 seconds
    And I press left arrow key to navigate to previous month
    And I press right arrow key to navigate to next month
    And I press "SETTINGS"
    And I press "SIGN OUT"

Scenario:  Remember user while Signing In 
    
    Given I am on "Splash" screen
    When I press "Sign In"
    Then I wait up to "10" seconds for the "Sign In" button to appear
    And I enter "test345@test.com" as the EmailId
    And I enter "123456789" as the Password
    And I click on Remember Me check box 
    And I press "Go" 
    Then the "OvulationCalender" activity should be open
    And I press "SETTINGS"
    And I press "SIGN OUT"
    Then I press "Sign In"
    And I check for text "test345@test.com" as the EmailId

Scenario: Check if error message is displayed if all or any one of fields are blank on SignIn page

    Given I am on "Splash" screen
    When I press "Sign In"
    Then I wait up to "10" seconds for the "Sign In" button to appear
    Then I clear the emailid and password fields and uncheck the Remember me checkbox
    And I enter "" as the EmailId
    And I enter "123456789" as the Password
    And I press "Go" 
    Then I see a toast message displaying "Please enter all the mandatory fields." 


Scenario:  New  user signing up as existing user  should show correct error message 
    Given I am on "Splash" screen
    When I press "Sign In"
    Then I wait up to "10" seconds for the "Sign In" button to appear
    Then I clear the emailid and password fields and uncheck the Remember me checkbox
    And I enter "newuser@samp.com" as the EmailId
    And I enter "123456789" as the Password
    And I press "Go" 
    Then I see a toast message displaying "Unable to login, please try again!"  

Scenario: Verify if error message is dispay if user enters a wrong email format
    Given I am on "Splash" screen
    When I press "Sign In"
    Then I wait up to "10" seconds for the "Sign In" button to appear
    Then I clear the emailid and password fields and uncheck the Remember me checkbox
    And I enter "newuser@samp" as the EmailId
    And I enter "123456789" as the Password
    And I press "Go" 
    Then I see a toast message displaying "Please enter valid Email id." 
   


    