
# Tip calculator written in OOP
class TipCalculator
  attr_accessor :bill, :tip_percent, :num_people

  def grand_total
    @bill + (@bill * ((@tip_percent)/100.0))
  end

  def bill_split
    grand_total / @num_people
  end
  def ask_total
    puts "What is your total bill amount?"
    @bill = gets.chomp.to_f
  end

  def ask_tip_percent
    puts "What percent tip would you like to leave?"
    @tip_percent = gets.chomp.to_f

  end

  def ask_num_people
    puts "How many in your party?"
    @num_people = gets.chomp.to_i
  end

  def total_per_person
    puts "The bill split is #{bill_split} "

  end


end

def test
  tip_calc = TipCalculator.new

  tip_calc.bill

  tip_calc.ask_total
  tip_calc.ask_tip_percent
  tip_calc.ask_num_people

  # puts tip_calc.grand_total
  # puts tip_calc.bill_split

  tip_calc.total_per_person


end

test

# OOP Practice
class Quadrilateral 
  attr_accessor :num_sides 
  def initialize
    @num_sides= 4
  end
  def perimeter
    perimeter= @num_sides * @length
  end
 end

class Rectangle < Quadrilateral
  attr_accessor :length, :width
  def initialize(length, width)
    @length=length
    @width= width
  end
  def perimeter
    perimeter= (2*@length)+(2*width)
  end
  def area
    area= @length* @width
  end
end

class Square < Rectangle
  attr_accessor :length
  def initialize(length)
    @length=length
  end
  def perimeter
    perimeter=4*@length
  end
  def area
    area= @length**2
  end
  def side_length
    @length
  end
end

class Trapezoid < Quadrilateral
  attr_accessor :side_a, :side_b, :side_c, :side_d
  def initialize(side_a, side_b, side_c, side_d)
    @side_a= side_a
    @side_b= side_b
    @side_c= side_c
    @side_d= side_d
  end
  def perimeter
    perimeter= @side_a + @side_b + @side_c+ @side_d
  end

 end

class Rhombus < Trapezoid
  attr_accessor :length
  def initialize(length)
    @length=length
  end
  def perimeter
    perimeter= @length * 4
  end
  def side_length
    @length
  end
end

def test
 rec= Rectangle.new(1, 2)
 puts rec.perimeter == 6
 puts rec.area == 2

 trap= Trapezoid.new(1, 2, 1, 3)
 puts trap.perimeter == 7

 rhom= Rhombus.new(1)
 puts rhom.perimeter == 4
 puts rhom.side_length == 1

 squa = Square.new(1)
 puts squa.perimeter == 4
 puts squa.area == 1
 puts squa.side_length == 1
end

test