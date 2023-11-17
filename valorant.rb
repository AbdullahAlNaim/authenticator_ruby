class Agents
  attr_accessor :name

  def initializer(name)
    @name = name
  end

  def to_s
    puts "Agent name is #{@name}"
  end
end

jett = Agents.new("Jett")

puts jett