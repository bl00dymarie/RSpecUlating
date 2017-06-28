class MotherNature
  def initialize(fruits)
    @fruits = fruits
  end

  def list_fruit_names
    @fruits.map(&:name).join(', ')
  end
end

describe MotherNature do
  it 'the list_fruit_names method should work correctly' do
    fruit1 = double('fruit')
    fruit2 = double('fruit')

    allow(fruit1).to receive(:name) { 'Yummy Kiwi' }
    allow(fruit2).to receive(:name) { 'Tasty Peach' }
    # stud1.stub(:name).and_return('Aaliyah Vernay')
    # stud2.stub(:name).and_return('Vanessa da Mata')

    mn = MotherNature.new [fruit1, fruit2]
    expect(mn.list_fruit_names).to eq('Yummy Kiwi, Tasty Peach')
  end
end
