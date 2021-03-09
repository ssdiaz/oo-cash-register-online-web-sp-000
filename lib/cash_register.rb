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
      self.total = (total* ((100-discount.to_f)/100)) .to_i
      puts "After the discount, the total comes to $#{self.total}."
    else


    end
  end



end
