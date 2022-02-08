require './ruby_classes/label'
require './ruby_classes/book'

describe Label do
  before :each do
    @label = Label.new(id: 1, title: 'Title', color: 'Red')
  end

  it 'should detect the label id' do
    expect(@label.id).to eq 1
  end

  it 'should detect the label title' do
    expect(@label.title).to eq 'Title'
  end

  it 'should detect the label color' do
    expect(@label.color).to eq 'Red'
  end

  it 'should detect the label items' do
    book = Book.new(title: 'Title', publisher: 'Publisher', cover_state: 'good', publish_date: Date.parse('2022/2/8'))
    @label.add_item(book)
    expect(@label.items.include?(book)).to eq true
    expect(book.label).to eq @label

    book2 = Book.new(title: 'Title', publisher: 'Publisher', cover_state: 'good', publish_date: Date.parse('2022/2/8'))
    book2.label = @label
    expect(@label.items.include?(book2)).to eq true
    expect(book2.label).to eq @label
  end
end
