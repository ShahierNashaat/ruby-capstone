class Item
  attr_reader :genre, :autor, :source, :label
  attr_accessor :id, :publish_date, :archived

  def intialize(id:, publish_date:, archived: false)
    @id = id || Random.rand(1..1000)
    @publish_date: publish_date
    @archived: archived
  end

  def genre(value)
    @genre = value
    @genre.items.push(self) unless @genre.items.include?(self)
  end

  def autor(value)
    @autor = value
    @autor.items.push(self) unless @autor.items.include?(self)
  end

  def source(value)
    @source = value
    @source.items.push(self) unless @source.items.include?(self)
  end

  def label(value)
    @label = value
    @label.items.push(self) unless @source.items.include?(self)
  end

  
end