require 'sinatra'

puts "Testing 1-2-3"

films = [
    "Back to the Future",
    "ET",
    "Schindler's List",
    "Star Wars"
]

get '/' do
    "<h1>Welcome to the film list application.</h1>"
end

get '/about' do
    erb :about
end

get '/films' do
    @filmList = films
    erb :films
end

get '/addfilm' do
    erb :add_film
end

post '/createNewFilm' do
    new_film = params["newfilm"]
    films.push(new_film)
    redirect to ("/films")
end