class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|i| i.gym == self}
  end

  def members
    self.memberships.map {|i| i.lifter}
  end

  def member_names
    self.members.map(&:name)
  end


  def total_lifts
    self.members.inject(0){|sum, i| sum + i.lift_total}
  end


  end
