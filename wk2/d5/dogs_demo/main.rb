require 'sinatra'
require 'sinatra/reloader' 
require 'pg'

get '/' do
  erb :home
end

get '/new' do
  erb :new
end


get '/dogs' do
  sql = "SELECT * FROM dogs"
  @rows = run_sql(sql)
  erb :dogs
end



post '/create' do
sql_command = "INSERT INTO dogs (name, photo, breed) VALUES ('#{params['name']}', '#{params['photo']}', '#{params['breed']}')"
run_sql(sql_command)
redirect to('/dogs')
end


def run_sql(sql_command)
	conn = PG.connect(:dbname => 'task_list', :host => 'localhost')
	result = conn.exec(sql_command)
	conn.close
	result
end
