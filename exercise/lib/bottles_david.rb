class Bottles
    def initialize
        song = create_song()
    end

    def create_song()
        song = ""
        iterators = (0..99).sort { |a| -a }

        iterators.to_a.each do |i|
            if(i == 0)
                song += last_verse
            elsif()
                song += one_bottle_of_beer
            elsif()
                song += two_bottles_of_beer
            else
                song += verse(i)
            end
        end

        song
    end

    def bottles_of_beer_on_the_wall
        "bottles of beer on the wall"
    end

    def bottles_of_beer
        "bottles of beer"
    end

    def bottle_of_beer
        "bottle of beer on the wall"
    end

    def take_one_and_pass_around
        "Take one down and pass it around"
    end

    def verse(number)
        parse_number(number) + 
        bottles_of_beer_on_the_wall() + ", " +
        parse_number(number) +
        bottles_of_beer() + ". \n " +
        take_one_and_pass_around + ", " +
        parse_number(number-1) +
        bottles_of_beer_on_the_wall() + ". \n "
    end

    def two_bottles_of_beer
        parse_number(number) + 
        bottles_of_beer_on_the_wall() + ", " +
        parse_number(number) +
        bottles_of_beer() + ". \n" +
        take_one_and_pass_around + ", " +
        parse_number(number-1) +
        "david" + ". \n "
    end

    def one_bottle_of_beer
        parse_number(number) + 
        bottle_of_beer() + ", " +
        parse_number(number) +
        bottles_of_beer() + ". \n" +
        take_one_and_pass_around + ", " +
        "no more " + 
        bottle_of_beer() + ". \n "
    end

    def last_verse
        "No more bottles of beer on the wall, no more bottles of beer. \n " +
        "Go to the store and buy some more, 99 bottles of beer on the wall. \n"
    end

    def parse_number(number)
        "#{number} " 
    end
end