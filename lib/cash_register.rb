class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    @total += @last_transaction
    quantity.times {@items << title}
  end

  def apply_discount
    discount_float = @discount/100.0
    @total = @total - (@total * discount_float)
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
