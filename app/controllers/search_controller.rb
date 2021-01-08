class SearchController < ApplicationController
  def index
    # conn = Faraday.new(
    #   url: 'https://poetrydb.org/',
    #   headers: {'Content-Type' => 'application/json'}
    # )

    # response = conn.get("author/#{params[:author]}")

    # @poems = JSON.parse(response.body, symbolize_names: true)[0..9]
    
    @poems = SearchFacade.poems(params[:author])
  end
end
