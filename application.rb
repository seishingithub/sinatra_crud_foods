require 'sinatra/base'

class Application < Sinatra::Application

  def initialize(app=nil)
    super(app)

    # initialize any other instance variables for you
    # application below this comment. One example would be repositories
    # to store things in a database.

  end

  get '/' do
    erb :index
  end

  get '/foods' do
    erb :foods, locals: {:foods => DB[:foods].all}
  end

  get '/foods/new' do
    erb :new_foods
  end

  post '/foods' do
    DB[:foods].insert({:name => params[:name], :description => params[:description], :rating => params[:rating]})
    redirect '/foods'
  end


end