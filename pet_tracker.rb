# Define the Pet class
class Pet
  attr_accessor :name, :type
  attr_reader :age

  def initialize(name, type, age)
    @name = name
    @type = type
    @age = age
  end

  def age=(new_age)
    @age = new_age.to_i
  end

  def info
    "Name: #{@name}, Type: #{@type}, Age: #{@age}"
  end
end

# CLI logic
def start_pet_tracker
  puts "Welcome to the Pet Tracker CLI!"
  pets = []

  loop do
    puts "\nMenu:"
    puts "1. Add a Pet"
    puts "2. View All Pets"
    puts "3. Update a Pet's Age"
    puts "4. Exit"
    print "Choose an option: "
    choice = gets.chomp.to_i

    case choice
    when 1
      print "Enter pet name: "
      name = gets.chomp
      print "Enter pet type: "
      type = gets.chomp
      print "Enter pet age: "
      age = gets.chomp

      pets << Pet.new(name, type, age)
      puts "Pet added successfully!"
    when 2
      if pets.empty?
        puts "No pets to display."
      else
        pets.each_with_index { |pet, index| puts "#{index + 1}. #{pet.info}" }
      end
    when 3
      if pets.empty?
        puts "No pets to update."
      else
        pets.each_with_index { |pet, index| puts "#{index + 1}. #{pet.name}" }
        print "Select the number of the pet to update: "
        index = gets.chomp.to_i - 1
        print "Enter new age: "
        pets[index].age = gets.chomp
        puts "Age updated successfully!"
      end
    when 4
      puts "Goodbye!"
      break
    else
      puts "Invalid option. Try again."
    end
  end
end

start_pet_tracker
