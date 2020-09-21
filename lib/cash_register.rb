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
