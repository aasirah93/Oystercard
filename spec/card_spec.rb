require "card"

describe Card do
  it "new instance of Card starts with 0 balance" do
    new_card = Card.new
    expect(new_card.balance).to equal(0)
  end
end
