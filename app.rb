require "sinatra"

get '/' do
    erb :home
end

post '/name_choice' do
    fname = params[:fname]
    lname = params[:lname]
    address = params[:address]
    city = params[:city]
    state = params[:state]
    redirect '/result?fname=' + fname + '&lname=' + lname + '&address=' + address + '&city=' + city + '&state=' + state
end

get '/result' do
    fname = params[:fname]
    lname = params[:lname]
    address = params[:address]
    city = params[:city]
    state = params[:state]
    erb :result, :locals => {:fname => fname, :lname => lname, :address => address, :city => city, :state => state}
end
