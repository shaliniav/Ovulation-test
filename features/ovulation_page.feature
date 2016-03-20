Feature: OvulationPage feature 

Scenario: Click on period days would open a dialog having a message 

	Given I sign in with "test345@test.com" as emailId and "123456789" as password
    Then the "OvulationCalender" activity should be open
    Then I wait for 10 seconds
    Then I click on period days in the calender , I see a dialog with msg "Sit back & relax, no tests today!" 
    And I press "SETTINGS"
    And I press "SIGN OUT"

 Scenario: Toggling on the Made Love option for period days and checking for Yes and No 
   	Given I am on "Splash" screen
   	Then I sign in with "test345@test.com" as emailId and "123456789" as password
    Then the "OvulationCalender" activity should be open
    Then I wait for 10 seconds
    Then I click on Made Love for period days



