class ComplimentGenerator
  attr_accessor :compliment

  def initialize()
    puts "\nCreating a new instance of the ComplimentGenerator class"
    @compliment = 'you are cool'
  end

  def update_compliment(new_compliment)
    @compliment = new_compliment
  end

end

describe ComplimentGenerator do
  before(:each) do
    @ins_gen = ComplimentGenerator.new
  end

  it 'should have a default compliment' do
    expect(@ins_gen.compliment).to_not be_nil
    expect(@ins_gen.compliment).to eql 'you are cool'
  end
  it 'should be able to change its compliment' do
    expect(@ins_gen.update_compliment('you are smart')).to_not be_nil
    expect(@ins_gen.update_compliment('you are smart')).to_not be 'you are cool'
  end
end
