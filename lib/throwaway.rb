require 'pry'

class CashRegister
  attr_accessor :total

  def initialize(total = 0)
    @total = 0
  end

  def discount
    discount = 20
  end

  def items(list)
    list.map do {|item|}
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end

  def calculate_discount
    (discount / 100.0) * self.total
  end

  def apply_discount
    if calculate_discount == 0
      return "There is no discount to apply."
    else
      @total = @total - calculate_discount
      return "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction
  end

end