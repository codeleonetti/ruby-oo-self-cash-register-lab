
class CashRegister

    attr_accessor :total, :discount, :items, :decreasing_total

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @decreasing_total = 0
    end

    

    def add_item(title, price, quantity = 1)
        @decreasing_total = price * quantity
         @total  += price * quantity
         while quantity > 0
            @items << title
            quantity -= 1
         end

    end

    def apply_discount
       if @discount > 0 
        @total = @total - @total * @discount  / 100.0
        return "After the discount, the total comes to $#{@total.to_i}."
       else
            return  "There is no discount to apply."
        end
    end
      

    def void_last_transaction
        # need to remove items from one array to another array
        # return total
        @total = @total - @decreasing_total

          
    end
end