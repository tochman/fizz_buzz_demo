require './lib/fizz_buzz.rb'

describe FizzBuzz do

  it "will return 'WTF?' if number is negative" do
    expect(subject.check('text')).to eq "WTF?"
  end

  it "will return 'WTF?' if number is negative" do
    expect(subject.check(-2)).to eq "WTF?"
  end

  it "will return 'WTF?' if number is negative and divisable by 5" do
    expect(subject.check(-5)).to eq "WTF?"
  end

  it "will return 'WTF?' if number is negative and divisable by 15" do
    expect(subject.check(-15)).to eq "WTF?"
  end

  it "will return 'fizz' if the number is divisable by 3" do
    expect(subject.check(3)).to eq 'fizz'
  end

  it "will return 'buzz' if the number is divisable by 5" do
    expect(subject.check(10)).to eq 'buzz'
  end

  it "will return 'fizzbuzz' if the number is divisable by 15" do
    expect(subject.check(15)).to eq 'fizzbuzz'
  end

  it "will return the number if no conditions are met" do
    expect(subject.check(2)).to eq 2
  end
end
