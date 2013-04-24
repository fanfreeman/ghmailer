class ReposController < ApplicationController

	attr_accessor :github
  private :github

  def authorize
    github  = Github.new client_id: '...', client_secret: '...'
    address = github.authorize_url redirect_uri: 'http://...', scope: 'repo'
    redirect_to address
  end

  def callback
    authorization_code = params[:code]
    access_token = github.get_token authorization_code
    access_token.token   # => returns token value
  end
  
  def lookup
  	@uname = params[:uname]
  	if @uname != nil
  		@repos = Github.repos.list user: @uname
  	end

  	respond_to do |format|
  		format.html
  		format.js
  	end
  end
end
