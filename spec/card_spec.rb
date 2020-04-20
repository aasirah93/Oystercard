require "card"

describe Card do
  new_card = Card.new
  it "new instance of Card starts with 0 balance" do
    expect(new_card.balance).to equal(0)
  end

  it 'user cant top up with negative number' do
    expect{new_card.top_up(-5)}.to raise_error("Enter positive number")
  end

  it 'user cant top up with non-number' do
    expect{new_card.top_up("hi").to raise_error("Enter a number")}
  end

  it 'topping up by £10 incr balance by £10' do
    expect{new_card.top_up(10)}.to change {new_card.balance}.by(10)
  end
end
