require "instagram"

Instagram.configure do |config|
    
    if Rails.env.production?
		config.client_id = "8b783dca69c047a7884c4f01e01d855c"
	  	config.access_token = "33085202.8b783dc.beb4e72994784a9c828272dd6cf593d3"
    else
		config.client_id = "8db2485ad3954da585d59829937b3a2e"
	  	config.access_token = "33085202.8db2485.35ab53636726491bb841c4e690a89450"
	end

end

