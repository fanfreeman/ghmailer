class Notifier < ActionMailer::Base
  default :from => "github_mailer@example.com"
  
  # send a repo list email to the specified email address
  def repos_email(email_address, user_name, repos)
  	@user_name = user_name
  	@repos = repos
    mail( :to => email_address, :subject => "Here's #{user_name}'s GitHub Repos" )
  end
end
