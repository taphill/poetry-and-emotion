class SearchFacade
  def self.poems(author)
    conn = Faraday.new(
      url: 'https://poetrydb.org/',
      headers: {'Content-Type' => 'application/json'}
    )

    response = conn.get("author/#{author}")

    JSON.parse(response.body, symbolize_names: true)[0..9]
  end
end
