# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
oli = Lifter.new("Oli", 30)
ranjit = Lifter.new("Ranjit", 29)
pete = Lifter.new("Pete", 60)

pure = Gym.new("PureGym")
fit = Gym.new("FitnessFirst")
ethos = Gym.new("ethos")

m1 = Membership.new(20, oli, pure)
m2 = Membership.new(49, ranjit, ethos)
m3 = Membership.new(34, pete, pure)
m4 = Membership.new(60, oli, fit)
binding.pry

puts "Gains!"
