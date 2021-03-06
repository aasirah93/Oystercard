class Card
  attr_reader :balance

  MAXIMUM_BALANCE =  90

  def initialize
    @balance = 0
  end

  def top_up(amount)
    fail 'Maximum balance exceeded' if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

end
