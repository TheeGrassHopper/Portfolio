module ApplicationHelper

	def login_helper
	 if current_user.is_a?(User)  
			 link_to "Logout", destroy_user_session_path, method: :delete 
		else
			 (link_to "Regester", new_user_registration_path)+
			 "<br>".html_safe +
			 (link_to "Login", new_user_session_path)
		end
	end

	def source_helper(lyaout_name)
		if session[:source]
			greeting = "Thanks for visiting me form #{session[:source]} and you are on the #{lyaout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
	end

	def copyright_generator
    AlsViewTool::Renderer.copyright "Alwan Mortada", "All Rights Reserved"
	end
end
