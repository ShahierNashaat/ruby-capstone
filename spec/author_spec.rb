require './ruby_classes/author'

describe Author do
  context 'It should create author and add item' do
    before :each do
      @author = Author.new('a', 'b')
    end

    it 'should be an instance' do
      expect(@author).to be_an_instance_of Author
    end

    it 'retrun first name' do
      expect(@author.first_name).to eq 'a'
    end

    it 'retrun last name' do
      expect(@author.last_name).to eq 'b'
    end
  end
end
