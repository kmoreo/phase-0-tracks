# Virus Predictor

# I worked on this challenge [with: Pavan Sarguru].
# We spent [1.25] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative references a file within the same local directory
# require is capable of referencing more stuff, or files not in the same directory if the full file path is used.
require_relative 'state_data.rb'

require 'pry'

class VirusPredictor

#initializes values for the state, population, and population density of any new instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Combines the results of both methods to estimate how many people will die, and how quickly
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# Based upon population desity and population it will apply a multiplication factor and output a different prediction of deaths for a given state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      n = 0.4
    elsif @population_density >= 150
      n = 0.3
    elsif @population_density >= 100
      n = 0.2
    elsif @population_density >= 50
      n = 0.1
    else
      n = 0.05
    end

    number_of_deaths = (@population * n).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Estimates how quickly the disease will spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each_pair do |key, value|
  # binding.pry
  VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# => The first "level" of the hash used the "string" => syntax, which made sense given that state names were the keys in this case. For the values, which were another hash themselves, used the _key: value_ syntax, which can be used when a key is first initialized. Using two types in this file actually helped a lot with respect to readability of the information

# What does require_relative do? How is it different from require?
# => require_relative can only reference other files in the same directory. require can reference files, modules, and ruby gems to be used in a program.

# What are some ways to iterate through a hash?
# => Using builtin methods that take the key-value pair as parameters, just the key, or just the value.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# => First that there were several parameters that weren't called upon at all, and second that there were several instance variables that didn't need to be specifically fed into the method, since each instance already has access to these variables.

# What concept did you most solidify in this challenge?
# => I feel like I have a better understanding of refactoring and DRY code now. I will likely still write my program out in such a way that it's not perfect, but I hope now I can more easily identify areas where unnecessary code can be removed and improve the overall readability of the program.
