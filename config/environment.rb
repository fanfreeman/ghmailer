# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
GithubMailer::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => "eggsamurai",
  :password => "IloveChina13",
  :domain => "githubmailer.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}