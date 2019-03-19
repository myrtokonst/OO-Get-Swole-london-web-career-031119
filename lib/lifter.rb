class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def lifter_memberships
    Membership.all.select {|i| i.lifter == self}
  end

  def lifter_gyms
    self.lifter_memberships.map {|i| i.gym.name}
  end

  def self.average_lift
    Lifter.all.map(&:lift_total).inject(&:+)/Lifter.all.length
  end

  def total_cost
    self.lifter_memberships.inject(0){|sum,i| sum + i.cost}
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end 



end
