# frozen_string_literal: true
def calc(expr)
  expr_array = expr.split(' ')
  puts expr_array
  if expr_array.last == +
    expr_array.pop
    total = expr_array[0].to_i
    expr_array.shift
    expr_array.each { |x| total += x.to_i }
    total
  elsif expr_array.last == -
    expr_array.pop
    total = expr_array[0].to_i
    expr_array.shift
    expr_array.each { |x| total -= x.to_i }
    total
  elsif expr_array.last == '*'
    expr_array.pop
    total = expr_array[0].to_i
    expr_array.shift
    expr_array.each { |x| total *= x.to_i }
    total
  elsif expr_array.last == /
    expr_array.pop
    total = expr_array[0].to_i
    expr_array.shift
    expr_array.each { |x| total /= x.to_i }
    total
  else
    0
  end
end
