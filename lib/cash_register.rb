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
    # @total = @total*(100-@discount)/100
  #  @total = total_discount
    #@total = @total*(100-discount)/100

    if discount != 0

      disc_total = @total*(100-discount)/100
      puts "After the discount, the total comes to $#{disc_total}."
    end
  end



end
