add = lambda do |num1, num2|
    num1 + num2
end
subtract = lambda do |num1, num2|
    num1 - num2
end
multiply = lambda do |num1, num2|
    num1 * num2
end
division = lambda do |num1, num2|
    num1 / num2
end

def manager(function)
    print "number1: "
    num1 = gets.chomp.to_f 
    print "number2: "
    num2 = gets.chomp.to_f
    result = function.call(num1, num2)
    print "result = #{result}".center(30, "-")
end

begin
puts "calculator"
puts "a) addition"
puts "b) subtraction"
puts "c) multiplication"
puts "d) division"
puts "q) quit"
print "select (a/b/c/d/q) "
choice = gets.chomp
case choice
when 'a' then manager add
when 'b' then manager subtract
when 'c' then manager multiply
when 'd' then manager division
end

end while choice != 'q'
