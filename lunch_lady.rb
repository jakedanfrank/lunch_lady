#I wasnt able to finish nor get the program to run but hopefull i am on the right page 


#------------classes
#-------------lunchlady
#-------------user
#---------------maindish
#-------------sidedish
require "pry"
class Lunchlady
  def initialize       # ----------In every class
    @cart = []   #push 
    @cost_total = [] #push

    @main_menu = [
      pizza = Maindish.new("Pizza Slice", "3.75"),
      sandwhich = Maindish.new("Chedda Melt", "3.50"),
      stacker = Maindish.new("PBJ", "4.50"),
      fajitas = Maindish.new("Fajitas", "6.00")
    ]
    @side_dish = [
      celery = Sidedish.new("Celery", "2.00"),
      carrots = Sidedish.new("Carrots", "2.00"),
      apple = Sidedish.new("Apple", "1.50"),
      fries = Sidedish.new("Fries", "3.00")
    ]

    puts "\n\n---Welcome to Ruby Cafe!---\n\n"
    puts "what is your name"
    name = gets.strip
    puts "How much money do you have?"
    wallet = gets.to_i
    puts "Howdy #{name}, you have $#{wallet} to spend, choose wisely!\n\n"
 

 #----------------create user instance
   main_menu
  end
end

class User
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name 
    @price = price
  end
end

def food
  puts "#{@name} Your total is $#{price}"
end 

class Maindish
  attr_accessor :name, :price 
  def initialize(name, price)
    @name = name 
    @price = price 
  end

  def main_menu 
    puts "Choose a Main Dish"
    @main_menu.each_with_index do |food, index|
      puts "#{index +1 } #{food.name}"
      gets.to_i 
      # binding.pry
  end
end
  
  
class Sidedish
  attr_accessor :name, :price
  def initialize(name, price)
    @name = name
    @price = price 
  end


  def side_dish 
    puts "Choose a Side Dish"
    @side_dish.each_with_index do |food, index|
      puts "#{index +1} #{food.name}"
      gets.to_i
  end
end 
  

# user selection (remember to -1 from their selection)
# use that selection to target the index of the item they are ordering
# push that item into your @cart, push the associated price into @order_total

Lunchlady.new
