class PoemService
  def self.conn
    Faraday.new(
      url: 'https://poetrydb.org/',
      headers: {'Content-Type' => 'application/json'}
    )
  end

  def self.find_poems_by_author(author)
    response = conn.get("author/#{author}")

    JSON.parse(response.body, symbolize_names: true)[0..9]
  end
end
