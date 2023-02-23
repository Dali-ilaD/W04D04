

class Array


    def my_uniq
        arr = []
        self.each do |ele|
            if !arr.include?(ele)
                arr << ele
            end
        end
        arr 
    end

    def two_sum
        arr = []
        self.each_with_index do |ele,i|
            (i+1...self.length).each do |k|
                sum = self[i] + self[k]
                if sum == 0
                    arr << [i,k]
                end
            end
        end
        arr 
    end

    def my_transpose
         self.transpose
    end

    def stock_picker
        hash = {}

        self.each_with_index do |price, day|
            self.each_with_index do |price2,day2|
                if day2 > day
                profit = price2 - price

                days = [day,day2]
                
                hash[days] = profit
                end
            end
        end
        
       new_hash =  hash.sort_by {|k,v| v}
        new_hash[-1][0]
    end
end


