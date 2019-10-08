# my CLI Controller!
class MtbTypes::CLI

  def call
    puts "Hello and welcome to MTB Types:"
    list_types
    selection
    goodbye
  end

  def list_types
@names = MtbTypes::Types.all
@names.each.with_index(1) do |types, i|
  puts "#{i} - #{types.name}."

    end
  end

  def selection
    input = nil
    while input != "exit"
      puts "Enter a number to know more about the bikes, or type 'list' or 'exit'"
      input = gets.strip.downcase

      if input.to_i > 0
        the_types = @names[input.to_i-1]
        puts "#{the_types.description}"
      elsif input == "list"
        list_types
      else
        puts "Not sure what you want type list or exit."
      end

    end
  end

  def goodbye
    puts "Thanks for using MTB Types"
  end

end
