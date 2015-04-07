def divisor(number)
    i = 1
    final_list = []
    while i <= number do
        final_list.push(i) if (number % i == 0)
        i += 1
    end
    return final_list
end

def prime(number)
    prime_array = 2..number
    final_array = []
    prime_array.each do |i|
        final_array.push(i) unless divisor(i).length > 2
    end
    return final_array
end


def fib(number)
    i = 0
    fib = 1
    tracking_array = [1,1]
    while i <= number do
        fib += tracking_array[-2]
       tracking_array.push(fib)
        i += 1
    end
    return tracking_array
end
