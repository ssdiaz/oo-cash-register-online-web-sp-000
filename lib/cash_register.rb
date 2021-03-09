class CashRegister
  attr_accessor :total, :discount, :items

  def initialize (discount = nil)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item (title, price, quantity = nil)
    if quantity == nil
      @total += price
    else
      @total += price * quantity
    end
    items << title
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

  end

end
