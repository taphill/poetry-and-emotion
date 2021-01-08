class ToneService
  def self.conn
    Faraday.new(
      url: 'https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/f53b664d-d6d3-4704-95e2-5571d6b34a34/v3/tone',
      params: { version: '2017-09-21' },
      headers: { 'Content-Type' => 'application/json' }
    )
  end

  def self.find_poem_tone(poem_lines)
    response = conn.get('search') do |req|
      req.params['text'] = poem_lines
    end

    JSON.parse(response.body, symbolize_names: true)
  end
end
