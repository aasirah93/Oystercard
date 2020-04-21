require "card"

describe Card do
  new_card = Card.new
  it "new instance of Card starts with 0 balance" do
    expect(new_card.balance).to equal(0)
  end


  it 'raises an error if the maximum balance is exceeded' do
   maximum_balance = Card::MAXIMUM_BALANCE
   subject.top_up(maximum_balance)
   expect{ subject.top_up 1 }.to raise_error 'Maximum balance exceeded'
 end

  #it { is_expected.to respond_to(:deduct).with(1).argument }
    it 'expects money to be taken off of the oystercard' do
      subject.top_up(10)
      expect{ subject.deduct(5) }.to change{subject.balance}.by -5
    end
 end
