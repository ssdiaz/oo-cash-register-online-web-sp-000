class CashRegister
  attr_accessor :total, :discount

  def initialize (discount = nil)
    @discount = discount
    @total = 0
  end

  def add_item (title, price, quantity = nil)
    if quantity !=nil
      @total += price ** quantity.
    else
      @total += price
    end

    @total += price
  end










end
