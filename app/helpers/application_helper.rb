module ApplicationHelper #methods in helpers are only available to views
                         #used for formatting, i.e currency formatting

     def signed_in? #boolean method because of '?'
	    if session[:user_id].nil? # there is no logged in user_id
		   return         #like break statement in java
		else
		   @current_user = User.find_by_id(session[:user_id])
		#notice no return statement even though this is a boolean method ruby returns the last object in the method
		end
	 end

end
