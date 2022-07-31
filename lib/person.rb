# your code goes here
class Person
    attr_reader :name

    attr_accessor :bank_account, :happiness, :hygiene

    def initialize name                 
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account= value
        @bank_account = value
    end

    def happiness= mood                    
        if mood > 10
            mood = 10
        end

        if mood < 0
            mood = 0
        end
        @happiness = mood
    end

    def hygiene= merits
        if merits > 10
            merits = 10
        end

        if merits < 0
            merits = 0
        end
        @hygiene = merits
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid deposit
        @bank_account += deposit
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend buddy
        self.happiness += 3
        buddy.happiness += 3
        "Hi #{buddy.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(buddy, convo)
        if(convo == 'politics')
            self.happiness -= 2
            buddy.happiness -= 2
            "blah blah partisan blah lobbyist"
          elsif(convo == 'weather')
            self.happiness += 1
            buddy.happiness += 1
            "blah blah sun blah rain"
          else
            "blah blah blah blah blah"
          end
    end    
end
