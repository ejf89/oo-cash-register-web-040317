require 'pry'

class CashRegister
    attr_accessor :total, :discount, :quantity


    def initialize(discount=0)
        if @total == nil
            @total = 0
        end
        @items = []
        @discount = discount
    end

    def add_item(title, price, quantity=1)
        quantity.times do
            @items << title
        end
        @shift = (quantity * price)
        @total = @total + (quantity * price)
        @total
    end

    def apply_discount
        if discount > 0
            @total = @total * ((100 - discount) * 0.01)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total = @total - @shift
        @total
    end
end
