require 'pry'

class CashRegister
  attr_accessor :total, :last_transaction

  def initialize(discount = 0)
      @total = 0
      if discount != 0
        discount
      end
      @items = []
  end

   def discount
    discount = 20
   end

  def add_item(title, price, quantity = 1)
    quantity.times do
      items << title
    end
    @last_transaction = transaction(price, quantity)
    @total += @last_transaction
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

  def items
    @items
  end

  def transaction(price, quantity)
    price * quantity
  end

  def void_last_transaction
     @total -= @last_transaction
   end

end