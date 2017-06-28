require './hello_maybe'

describe HelloMaybe do
  context 'When testing the HelloMaybe class' do
    it "should say 'Hello?' when calling the say_maybe_hello method" do
      hm = HelloMaybe.new
      message = hm.say_maybe_hello
      expect(message).to eq 'Hello?'
    end
  end
end
