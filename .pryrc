# return a simple array
def Array.sample(i=10)
  a = []
  i.times do |x|
    a.push x
  end
  a
end

# return a simple hash
def Hash.sample(i=10)
  h = Hash.new
  i.times do |x|
    h[(?a.ord+x).chr.to_sym] = x + 1
  end
  h
end

# pry-debugger

# Pry.commands.alias_command 'c', 'continue'
# Pry.commands.alias_command 's', 'step'
# Pry.commands.alias_command 'n', 'next'
# Pry.commands.alias_command 'f', 'finish'
