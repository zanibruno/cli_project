# my CLI Controller!
class MtbTypes::CLI

  def call
    list_types
    selection
    goodbye
  end

  def list_types
    puts "Hello and welcome to MTB Types:"
@names = MtbTypes::Types.all
@names.each.with_index(1) do |types, i|
  puts "#{i} - #{types.name}."

    end
  end

  def selection
    input = nil
    while input != "exit"
      puts "Enter a number from 1 - 8 to know more about the bikes, or type list or exit"
      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= MtbTypes::Types.all.count
        the_types = @names[input.to_i-1]
        puts "#{the_types.description}"
      elsif input == "list"
        list_types
      elsif input == "exit"
      else
        puts "Not sure what you want, enter a number from 1 - 8 or type list or exit."
      end
    end
  end

  def goodbye
    puts "Thanks for using MTB Types"
  end

end
