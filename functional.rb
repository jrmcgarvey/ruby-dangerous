states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Returns a URL-friendly version of a string.
#   Example: "North Dakota" -> "north-dakota"
def urlify(string)
  string.downcase.split.join('-')
end

# urls: Imperative version
def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << urlify(state)
  end
  urls
end
puts imperative_urls(states).inspect

# urls: Functional version
def functional_urls(states)
  states.map { |state| urlify(state) }
end
puts functional_urls(states).inspect

def http_functional_urls(states)
    states.map { |state| "http://www.example.com/" + urlify(state)}
end

puts http_functional_urls(states).inspect

# puts http_functional_urls(states)

# singles: Imperative version
def imperative_singles(states)
  singles = []
  states.each do |state|
    if (state.split(/\s+/).length == 1)
      singles << state
    end
  end
  singles
end
puts imperative_singles(states).inspect

# singles: Functional version
def functional_singles(states)
  states.select { |state| state.split.length == 1 }
end
puts functional_singles(states).inspect

def dakota_one(states)
    states.select { |state| state.split.include?("Dakota") }
end

def dakota_two(states) 
    states.select { |state| state.split.length == 2 }
end

p dakota_one(states)

p dakota_two(states)

numbers = 1..10

# sum: Imperative solution
def imperative_sum(numbers)
  total = 0
  numbers.each do |n|
    total += n
  end
  total
end
puts imperative_sum(numbers)

# sum: Functional solution
def functional_sum(numbers)
  numbers.reduce { |total, n| total += n }
end
puts functional_sum(numbers)

# lengths: Imperative version
def imperative_lengths(states)
  lengths = {}
  states.each do |state|
    lengths[state] = state.length
  end
  lengths
end
puts imperative_lengths(states)

# lengths: Functional version
def functional_lengths(states)
  states.reduce({}) { |lengths, state|  lengths[state] = state.length; lengths }
end
puts functional_lengths(states)

def http_functional_urlsc(states)
    states.collect { |state| "http://www.example.com/" + urlify(state)}
end

puts http_functional_urlsc(states).inspect

def http_functional_urlsr(states)
    states.reject { |state| "http://www.example.com/" + urlify(state)}
end

puts http_functional_urlsr(states).inspect
