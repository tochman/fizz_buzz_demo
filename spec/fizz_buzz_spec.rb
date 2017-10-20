require './lib/fizz_buzz.rb'

describe '#fizz_buzz' do

  it "will return 'fizz' if the number is divisable by 3" do
    expect(fizz_buzz(3)).to eq 'fizz'
  end

end
