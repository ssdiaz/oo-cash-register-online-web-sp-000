class CashRegister
  attr_accessor :total, :discount, :items

  def initialize (discount = nil)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item (title, price, quantity = 1)
    # if quantity == nil
    #   @total += price
    #   @items << title
    # else
      @total += price * quantity
      quantity.times do
        @items << title
      end

      last_item = amount * quantity
  #  end
  end

  def apply_discount
    if discount != nil
      self.total = (total * ((100.0 -discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
  #  last_item = self.add_item
#    self.total = self.total - last_item
  end

end
