#!env ruby

require 'parallel'

require_relative 'lib/abstract.rb'
require_relative 'lib/processes.rb'
require_relative 'lib/threads.rb'
require_relative 'lib/ractors.rb'

if __FILE__ == $0
  iterations = ARGV[0]
  require 'benchmark'

  Benchmark.bm do |x|
    x.report('Ractors: ') do
      Montecarlo::Ractors.run!(iterations)
    end
    x.report('Processes: ') do
      Montecarlo::Processes.run!(iterations)
    end
    x.report('Threads: ') do
      Montecarlo::Threads.run!(iterations)
    end
  end
end
