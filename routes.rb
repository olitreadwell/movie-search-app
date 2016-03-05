get '/' do
  if File.exist?('movie_search_results.json')
    @movie_search_results = File.read('movie_search_results.json')
  else
    @movie_search_results = ""
  end

  erb :home
end

post '/movies' do
  query = "#{params[:q]}".gsub!(" ", "%20")
  query = "#{params[:q]}" if query == nil
  response = HTTParty.get("http://www.omdbapi.com/?s=#{query}&y=&plot=full&r=json")

  content_type 'application/json'
  response.parsed_response.to_json
  movie_search_results =  response

  File.open("movie_search_results.json", "w") do |file|
    file << movie_search_results
  end
  redirect to '/'
end
