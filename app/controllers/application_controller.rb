require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/posts/new' do
    @post = Post.new(name: params[:post_name], content: params[:post_content])
    redirect :'/posts'
    erb :new
  end
end
