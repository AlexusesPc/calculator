# ask the user for two numbers
# ask the user for an opration to perform
# perform the operation on the two numbers
# output the result

#We define this method so that message gets a "=>"

def prompt(message)
  Kernel.puts("=> #{message}")
end
#defines valid number, not equivalent to 0, so when user types a wrong number/integer he gets a message from the promt

def valid_number?(num)
  num.to_i() != 0
end
#in order to add the proper word to our case statement we define operation_to_message

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt ("Greetings, stranger, what's your name?")

name = '' #in order to get used out of scope, name is initialized here
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt ("Hi #{name}!")
#main loop
loop do
number1 = ''
  loop do
    prompt("Please enter the first numbo")
    number1 = Kernel.gets().chomp()

  if valid_number?(number1)
    break
  else
    prompt("Hmm... that doesn't look like a number we can work with")
  end
end

number2 = ''
loop do
  prompt("Please enter second numbo")
  number2 = Kernel.gets().chomp()

  if valid_number?(number2)
    break
  else
    prompt("Hmm... that doesn't look like a number we can work with")
  end
end

operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subbtract
  3) divide
  4) multiply
MSG

prompt(operator_prompt)

operator = ''
loop do
  operator = Kernel.gets().chomp()
  #%w used to write an array of strings separated by spaces instead of commas and without quotes around em.

  if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

prompt("#{operation_to_message(operator)} the two numbers...")

result = case operator
when '1'
  number1.to_i + number2.to_i
when '2'
  number1.to_i - number2.to_i
when '3'
  number1.to_f / number2.to_f
when '4'
  number1.to_i * number2.to_i
end


puts "The result is #{result}!"

prompt("Do you want to perform another calculation? (Y to calculate again)")
answer = Kernel.gets().chomp()
break unless answer.downcase().start_with?('y')
end

#Most Rubyists don't invoke methods with parentheses, unless they're passing in an argument.
#For example, we use name.empty(), but most Rubyists would write
#name.empty?. Some Rubyists even go as far as not putting parentheses around method
#calls even when passing in arguments. For example, they would write
#prompt "Hi there" as opposed to prompt("hi there")

#We're using Kernel.puts() and Kernel.gets(). But the Kernel is extraneous
#as well as the parentheses. Therefore, we can just call those methods by
#gets and puts. We already know that in Ruby we can omit the parentheses
#but how come we can also omit the Kernel.?
# When we write Ruy code that's not a class we are working within an object called
# main, which is an instance of object. The kernel module is automatically loaded by object,
# giving us access to all of it methods

#calculator
def prompt(message)
  puts("=>#{message}")
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Dividing'
  when '4'
    'Multiplying'
  end
end

prompt("Welcome to calculator! Enter your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do #main loop
  n1 = ''
  loop do
    prompt("What is the first number?")
    n1 = gets.chomp

    if valid_number?(n1)
      break
    else
      prompt("Hmm.. doens't look like a number")
    end
  end

  n2 = ''
  loop do
  prompt("What is the second number?")
  n2 = gets.chomp

    if valid_number?(n2)
      break
    else
      prompt("Hi not alright")
    end
  end

operator_prompt = <<MSG
  What operation would you like to perform?
  1) Add
  2) Subbtract
  3) Divide
  4) Multiply
MSG

  prompt("What you'd like to do? 1)Sum 2)Subtract 3)Multiply 4)Divide")

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

prompt("#{operation_to_message}Adding the two numbers...")

  result = case operator
  when '1'
    result = n1.to_i + n2.to_i
  when '2'
    result = n1.to_i - n2.to_i
  when '3'
    result = n1.to_i * n2.to_i
  when '4'
    result = n1.to_f / n2.to_f
  end


  prompt("The result is: #{result}")
end #main loop ending

  prompt("Do you want to perform another calculation (Press Y)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using calculator!")
#1. Change prompt, ask user for input, add symbol to every message
#displayed => extract to method.
#if "no number string".to_i gets inputted == '0'
#2. Refactoring if into case statement.
#Capture that into one variable assingment
#3. Make loop ("initial 'hi' messages" and add additional responses
#if gets chomp is not correct) + initilize 'num' as it will be
#accessed from outer scope
#4. Make both loops regarding
#ask for number
#message if wrong
#make em loop entirely for a proper procedure...
#for n1 and n2
# Also, make it the end loop.
#5. Do you want to do another calculation (at the end)
#6. Add bybye message
#7.Add parameters in order to see if 1 2 3 4 (options) are the only
#ones that can be typed, or else will forward a error message.
#%w(1 2 3 4)
# +++ "adding two numbers.."
#8.Refactoring calculator + mesage (operation to...)
#9. Done?
