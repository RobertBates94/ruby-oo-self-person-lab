class Person
    attr_reader :name, :bank_account, :happiness
    attr_accessor :bank_account, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
    end

end

