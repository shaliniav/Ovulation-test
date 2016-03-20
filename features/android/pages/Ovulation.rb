require 'calabash-android/abase'

class Ovulation < Calabash::ABase


	def title
		return "Ovulation"
	end

	def clickOnPeriodDaysCheckmsg(msg)
		count = query("LightFontTextView id:'calendar_tv'").count
		i = 0
		current_index = 0;
			while i < count do
				if (query("LightFontTextView id:'calendar_tv'",:currentTextColor)[i]) == -1158577 then
				 valuecolor= query("LightFontTextView id:'calendar_tv'",:currentTextColor)[i]
				 puts valuecolor
				 touch(query("LightFontTextView id:'calendar_tv' index:#{i}"))
				 element_exists("LinearLayout id:'popup_contentview'")
  				 actual_msg = query("LightFontTextView id:'test_required_msg'", :text).first
  				unless msg == actual_msg
    				fail "Text in email field is incorrect. Expected '#{msg}', but got '#{actual_msg}'."
  				end
				 system 'adb shell input keyevent 4'
				 
				end
				i +=1
			end
	end

	def clickOnPeriodToggleMadeLove
		count = query("LightFontTextView id:'calendar_tv'").count
		i = 0
		current_index = 0;
			while i < count do
				if (query("LightFontTextView id:'calendar_tv'",:currentTextColor)[i]) == -1158577 then
				 valuecolor= query("LightFontTextView id:'calendar_tv'",:currentTextColor)[i]
				 puts valuecolor
				 touch(query("LightFontTextView id:'calendar_tv' index:#{i}"))
				 element_exists("LinearLayout id:'popup_contentview'")
  				 touch("LightFontTextView id:'made_love_textview'")
  				 actual_msg = query("LightFontTextView id:'made_love_textview'", :text).first

  				 msg = "Made Love : Yes"
  				unless msg == actual_msg
    				fail "Text in email field is incorrect. Expected '#{msg}', but got '#{actual_msg}'."
  				end
  				touch("LightFontTextView id:'made_love_textview'")
				 system 'adb shell input keyevent 4'
				 
				end
				i +=1
			end
	end

end