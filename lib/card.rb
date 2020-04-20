class Card
  attr_reader :balance

  def initialize(balance=0)
    @balance = balance
  end

  def top_up(amount)
    amount.to_i

    if amount < 0
      raise ArgumentError.new('Enter positive number')
    elsif amount == amount.to_i
      @balance += amount
    else
      raise ArgumentError.new('Enter positive number')
    end
  end

end
