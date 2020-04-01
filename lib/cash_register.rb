class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price)
    @total += price
    @items << title
  end

  def apply_discount

  end

  def items

  end

  def void_last_transaction

  end
end
