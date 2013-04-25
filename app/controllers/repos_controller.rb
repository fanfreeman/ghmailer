class ReposController < ApplicationController

  def lookup
  	@uname = params[:uname]
  	if @uname == nil || @uname.length <= 0
  		@repos_list = []
  	else
  		repos = Github.repos.list user: @uname
  		@repos_list = repos.map do |r|
  			{ :name => r.name, :url => r.html_url }
			end
			logger.debug "repos size: #{@repos_list.size}"
  	end

  	respond_to do |format|
  		format.html
  		format.js
  	end
  end

  def mail
		email = params[:email_address]
		uname = params[:hidden_uname]
		repos = ActiveSupport::JSON.decode(params[:hidden_repos])
		Notifier.repos_email(email, uname, repos).deliver

		respond_to do |format|
			format.js
		end
  end
end
