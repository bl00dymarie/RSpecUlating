require './string_analyzer.rb'

describe StringAnalyzer do

  context 'Checking vowels with valid input' do
    it 'should detect when a string contains vowels' do
      sa = StringAnalyzer.new
      test_string = 'Erdbeere und Saft'
      expect(sa.vowels?(test_string)).to be true
    end
    it "should detect when string doesn't contain vowels" do
      sa = StringAnalyzer.new
      test_string = 'Grrrl'
      expect(sa.vowels?(test_string)).to be false
    end
  end

  context 'Checking consonants with valid input' do
    it 'should detect when a string contains consonants' do
      sa = StringAnalyzer.new
      test_string = 'Erdbeere und Saft'
      expect(sa.consonants?(test_string)).to be true
    end
    it "should detect when string doesn't contain consonants" do
      sa = StringAnalyzer.new
      test_string = 'Ouuui'
      expect(sa.consonants?(test_string)).to be false
    end
  end

end
