class CarMailer < ActionMailer::Base
 
	def car_created(user)
 
		mail(to: user.email,
			 from: "services@mydomain.com",
			 subject: "Car Created",
			 body: "This is my first car!"
		)
 
	end
 
end