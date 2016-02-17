require 'calabash-android/calabash_steps'
require 'calabash-android/abase'


Given(/^I am on "([^"]*)" screen$/) do |arg1|  
	check_element_exists("LightFontTextView marked:'Sign Up With Email'") 
end

When(/^I press the Sign In $/) do |text|
	touch("Login Button :'sign_in_button'")

end	

Then(/^I wait up to "([^"]*)" seconds for the "([^"]*)" button to appear$/) do |arg1, button_identifier|
	 wait_for_element_exists("LightFontTextView marked:'Sign In'")
end

And(/^I enter "([^"]*)" as the EmailId$/) do |arg1|
	enter_text("LightFontEditText id:'editext_username'",arg1)
end

And(/^I enter "([^"]*)" as the Password/) do |pwd|
 enter_text("LightFontEditText id:'editext_password'",pwd)
end

Then /^the "([^\"]*)" activity should be open$/ do |arg1|
	element_exists("LinearLayout id:'take_test'")
end



#-----Scenario 2 ------------------------
When(/^I press the Sign Up With Email $/) do |text|
	touch("Login Button :'sign_up_with_email_btn'")
end	


Then(/^I wait up to "([^"]*)" seconds for the "([^"]*)" screen to appear$/) do |arg1, screen|
	 element_exists("LightFontTextView marked:'Confirm password'")
end

And(/^I enter "([^"]*)" as the Name/) do |name|
 enter_text("LightFontEditText id:'editext_name'",name)
end

And(/^I use keyboard to enter "([^"]*)" as the Email/) do |email|
 enter_text("LightFontEditText id:'editext_emailid'",email)
end

And(/^I enter "([^"]*)" as the Confirm Password/) do |pwd|
 enter_text("LightFontEditText id:'editext_confirmpassword'",pwd)
end

And(/^I press Go/) do
touch("Go Button :'login_button'")
end

Then(/^I see "([^"]*)" screen/) do |screen|
	element_exists("LightFontTextView id:'title'") 
end
#------------------------Scenario 3 --------------------------
Given(/^I sign in with "([^"]*)" as emailId and "([^"]*)" as password/) do |email, pwd|
	 login = page(Login).await
	 login.i_login(email,pwd)
end

And(/^I press left arrow key to navigate to previous month/) do
	touch("RelativeLayout id:'calendar_left_arrow'")
	element_exists("LinearLayout id:'take_test'")
end

And(/^I press right arrow key to navigate to next month/) do
	 touch("RelativeLayout id:'calendar_right_arrow'")
	 element_exists("LinearLayout id:'take_test'")
end	

#Scenario: As a existing user I can click on back button exists the app gracefully

And(/^I press back button/) do
	press_back_button
end 

And(/^I click on Remember Me check box/) do
	touch("ImageButton marked:'remember_me_checkbox'")
end 

  Then(/^I clear the emailid and password fields and uncheck the Remember me checkbox/) do
  	login = page(Login).await
  	login.clear_fields
  end


And(/^I check for text "([^"]*)" as the EmailId/) do |emailId|
	login = page(Login).await
	login.check_username(emailId)
end


#----------------------Scenario 4 -------------------------------

 Then(/^I see a toast message displaying "([^"]*)"/) do |msg|
	wait_for_text(msg, timeout: 10)
 end




