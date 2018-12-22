class User < ActiveRecord::Base
	
	def self.from_oauth(auth)

		where(name: auth[:info][:name]).first_or_create do |u|
			u.email = auth[:info][:email]
			u.uid = auth[:uid]
		end
	end
end
