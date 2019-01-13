
require 'pry'
class Person


 attr_accessor :bank_account, :happiness
attr_reader :name, :hygiene

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
   @name = name
   @bank_account = bank_account
   @happiness = happiness
   @hygiene = hygiene
 end


 # def name
#   @name
# end
 #
 # def bank_account
 #   @bank_account
 # end
 #
 # def happiness_points
 #   @happiness_points
 # end

  def bank_account=(amount)
   @bank_account += amount
 end

  def happiness=(new_happiness)
   @happiness = new_happiness
   @happiness = 10 if @happiness > 10
   @happiness = 0 if @happiness < 0

  end
 def hygiene=(new_hygiene)
   @hygiene = new_hygiene
   @hygiene = 10 if @hygiene > 10
   @hygiene = 0 if @hygiene < 0
 end

   def happy?
    @happiness > 7 ? true : false
  end

   def clean?
    @hygiene > 7 ? true : false
  end

 def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
end

 def take_bath
  self.hygiene += 4
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

 def work_out
  self.happiness += 2
  self.hygiene -= 3
  return "♪ another one bites the dust ♫"
end

 def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end

 def start_conversation(person, topic)
  case topic
  when "politics"
    self.happiness -= 2
    person.happiness -= 2
    "blah blah partisan blah lobbyist"
  when "weather"
    self.happiness += 1
    person.happiness += 1
    "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end
end
end