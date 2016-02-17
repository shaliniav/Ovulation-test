require 'calabash-android/abase'

class Login < Calabash::ABase
	
	

	def title
		return "Sign In"
	end

	
    def i_login username,password
        touch("LightFontTextView marked:'sign_in_button'")
        enter_text("LightFontEditText id:'editext_username'",username)
        enter_text("LightFontEditText id:'editext_password'",password)
        touch("LightFontTextView marked:'login_button'")
    end

    def check_username username
    	expected_email=query("LightFontEditText id:'editext_username'",:getText).first
    	puts expected_email
    	unless expected_email == username
    		fail "Text in email field is incorrect. Expected '#{expected_email}', but got '#{username}'."
  		end 
    end	
    
    def clear_fields
    	 clear_text_in("LightFontEditText id:'editext_username'")
    	 clear_text_in("LightFontEditText id:'editext_password'")
    	 touch("android.widget.ImageButton marked:'remember_me_checkbox'")

    end
  
end

