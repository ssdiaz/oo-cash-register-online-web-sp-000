class CashRegister
  attr_accessor :total, :discount

  def initialize (discount = nil)
    @discount = discount
    @total = 0
  end

  def add_item (title, price, quantity = nil)
    if quantity == nil
      @total += price
    else
      @total += price * quantity
    end
  end

  def apply_discount
    total_discount = (@total*((100-@discount)/100)).to_i
  #  @total = @total*(100-discount)/100
    #puts "After the discount, the total comes to #{@total*(100-discount)/100}"
  end









end
