# your code goes here

class Person
@@all = []
  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

    @@all << self

  end

def self.all
  @@all
end


def hygiene=(num)

  if num > 10
    @hygiene = 10
  elsif num < 0
    @hygiene = 0
  else
    @hygiene = num
  end
end

def happiness=(num)
  if num > 10
    @happiness = 10
  elsif num < 0
    @happiness = 0
  else
    @happiness = num
  end
end


  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false

    end
  end

  def get_paid(salary_amount)
    @bank_account += salary_amount
    return "all about the benjamins"
    binding.pry
  end

  def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene - 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @friend = friend
    friend.happiness = friend.happiness + 3
    self.happiness = self.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic.downcase == "politics"
      self.happiness = @happiness - 2
      person.happiness -= 2
    "blah blah partisan blah lobbyist"
    elsif topic.downcase == "weather"
      self.happiness = @happiness + 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end














end
