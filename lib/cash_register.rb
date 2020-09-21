class CashRegister
  attr_accessor :discount, :total

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
    @last_items = []
  end

  def apply_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @items << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if @discount != 0
      self.total = @total - (@total * @discount / 100)
      "After the discount, the total comes out to #{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
