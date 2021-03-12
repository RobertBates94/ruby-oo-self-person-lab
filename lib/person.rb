require 'pry'

class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_accessor :bank_account 

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happy)
        if happy > 10
            @happiness = 10
        elsif happy < 0
            @happiness = 0
        else 
            @happiness = happy
        end
    end

    def hygiene=(clean)
        if clean > 10
            @hygiene = 10
        elsif clean < 0 
            @hygiene = 0
        else 
            @hygiene = clean
        end
    end

    def happy?
        if @happiness > 7
            return true
        else @happiness <= 7 
            return false
        end
    end

    def clean?
        if @hygiene > 7 
            return true
        else @hygiene <= 7 
            return false
        end
    end

    def get_paid(salary)
        salary = 100
        @bank_account = bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        take_bath = self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        work_out = self.hygiene -= 3
        work_out = self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(person, topic)
            if topic == "politics"
                person.happiness -= 2
                self.happiness -= 2  
                return "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                person.happiness += 1
                self.happiness += 1
                return "blah blah sun blah rain"
            else topic == "programming"
                return "blah blah blah blah blah"
            end
    end

end

