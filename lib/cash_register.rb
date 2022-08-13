class CashRegister
    attr_accessor :discount, :total
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    def total
        @total
    end
    def total=(num)
        @total = num
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
    end

    def items
      @items
    end

    def items=(new)
      @items << new   
    end

    def apply_discount
      if self.discount != 0
        self.total = self.total * (1.0 - self.discount/100.0)
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
    end
  end
end
