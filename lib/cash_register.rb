require 'pry'
class CashRegister
        def initialize (discount = 0)   
        @total = 0
        @discount = discount
    end

    def total
        @total
    end

    def total=(total)
        @total = total
    end

    def discount
        @discount
    end

    def discount=(discount)
        @discount = discount
    end
    

    def add_item(title, price, quantity = 1)
        self.total += (price * quantity)
        quantity.times do
            items << title
        end
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else
            self.total = total * (1-discount.to_f/100)
            "After the discount, the total comes to $#{total.to_i}."
        end
    end

    def items
        @items ||= []
    end
end



