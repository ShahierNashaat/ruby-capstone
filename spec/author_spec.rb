require './ruby_classes/author'

describe Author do
  context 'It should create author and add item' do
    author = Author.new('Fyodor', 'Dostoevsky')
    it 'Should create a new author' do
      expect(author.first_name).to eq 'Fyodor'
      expect(author.last_name).to eq 'Dostoevsky'
    end

    it 'Should add a new item' do
      author.add_item(author)
      expect(author.items.length).to eq 1  
    end
  end
end