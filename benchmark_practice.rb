# Benchmark.bm do |bm|
#   bm.report { first_approach }
#   bm.report { alternative_approach }
# end

require 'benchmark'

iterations = 100_000

Benchmark.bm do |bm|
  # joining an array of strings
  bm.report('join array of strings') do
    iterations.times do
      ["The", "current", "time", "is", Time.now].join(" ")
    end
  end

  # using string interpolation
  bm.report('string interpolation') do
    iterations.times do
      "The current time is #{Time.now}"
    end
  end

end