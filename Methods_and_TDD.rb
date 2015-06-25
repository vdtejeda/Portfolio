100.times do |number|
  if ((number+1)%15).zero?
    puts "FizzBuzz"
  elsif ((number+1)%3).zero?
    puts "Fizz"
  elsif ((number+1)%5).zero?
    puts "Buzz"
  else 
    puts (number+1)
  end
end

# fixes the add_two method so that it works with Strings
def add_two(number)
  if number.respond_to? :+
    if number.respond_to? :push
      number.push 2
    elsif number.respond_to? :downcase
      number + (2).to_s
    else
      number + 2
    end
  else nil
  end
end

def test_add_two
    p add_two(1)
    p add_two(1.0)
    p add_two(nil)
    p add_two({})
    p add_two([])
    p add_two(false)
    p add_two("two ")
end


# Assigns nicknames to the Beatles
beatles = [
  {
    name: nil,
    nickname: "The Smart One"
  },
  {
    name: nil,
    nickname: "The Shy One"  
  },
  {
    name: nil,
    nickname: "The Cute One"
    },
  {
    name: nil,
    nickname: "The Quiet One"
  }
]

beatles.each do |member|

  case member[:nickname]
  when "The Smart One"
    member[:name]="John Lennon"

  when "The Shy One"
    member[:name]="Ringo Starr"

  when "The Cute One"
    member[:name]="Paul McCartney"

  when "The Quiet One"
    member[:name]="George Harrison" 
  end

end

#Adds cheetah girls to the panel
CHEETAH_GIRLS = [
  "Raven-Symone", 
  "Adrienne Bailon",
  "Sabrina Bryan", 
  "Kiely Williams"
]

auditions = [
  "Raven-Symone", 
  "Usher",
  "Wiz Khalifa",
  "Adrienne Bailon",
  "Hulk Hogan",
  "Sabrina Bryan", 
  "Diego Lugo",
  "Kiely Williams", 
  "Justin Timberlake"
]

panel = []

auditions.each do |artist|
  if CHEETAH_GIRLS.include? artist
    panel << artist
end
end