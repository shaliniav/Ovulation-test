require 'calabash-android/abase'
require 'faker'

class SignUp < Calabash::ABase
	
	

	def title
		return "Signup"
	end

	def sign_up_new_user
		emailid = Faker::Internet.email
		puts emailid
		enter_text("LightFontEditText id:'editext_name'","test_123")
		enter_text("LightFontEditText id:'editext_emailid'",emailid)
		enter_text("LightFontEditText id:'editext_password'","123456789")
		enter_text("LightFontEditText id:'editext_confirmpassword'","123456789")
	end
end