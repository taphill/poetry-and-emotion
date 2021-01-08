class SearchFacade
  def self.poems(author)
    poems = PoemService.find_poems_by_author(author)

    poems.map do |poem|
      Poem.new(poem)
    end
  end
end
