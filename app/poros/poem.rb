class Poem
  attr_reader :title, :author, :lines

  def initialize(attr)
    @title = attr[:title]
    @author = attr[:author]
    @lines = attr[:lines]
  end
end
