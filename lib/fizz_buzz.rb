# Load all dependencies
Dir["lib/fizz_buzz/*"].each do |f|
  require "./#{f}"
end

class FizzBuzz

end
