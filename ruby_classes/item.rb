class Item
  attr_reader :genre, :author, :source, :label
  attr_accessor :publish_date

  def initialize(id:, publish_date:, archived: false)
    @id = id || Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def genre=(genre)
    @genre = genre
    @genre.items.push(self) unless @genre.items.include?(self)
  end

  def author=(author)
    @autor = author
    @autor.items.push(self) unless @autor.items.include?(self)
  end

  def source=(source)
    @source = source
    @source.items.push(self) unless @source.items.include?(self)
  end

  def label=(label)
    @label = label
    @label.items.push(self) unless @label.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    current_year = Time.new.year
    current_year - @publish_date[:year] > 10
  end
end
