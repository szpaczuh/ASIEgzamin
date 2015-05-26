class CommentMailer < ActionMailer::Base
 
	def comment_created(current_user,car_user,content)
 
		@current_user = current_user
		@car_user = car_user
		@content = content
 
		mail(to: car_user.email,
			 from: "services@mydomain.com",
			 subject: "Comment Created",
		)
 
	end
 
end
